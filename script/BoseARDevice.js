import WearableDeviceInformation from "./WearableDeviceInformation.js";

import SensorInformation from "./sensor/SensorInformation.js";
import SensorConfiguration from "./sensor/SensorConfiguration.js";
import SensorData from "./sensor/SensorData.js";
import SensorType from "./sensor/SensorType.js";

import GestureInformation from "./gesture/GestureInformation.js";
import GestureConfiguration from "./gesture/GestureConfiguration.js";
import GestureData from "./gesture/GestureData.js";
import GestureType from "./gesture/GestureType.js";

class BoseARDevice {
    constructor() {
        this.isConnected = false;

        this.characteristics = {};
        this.eventListeners = {
            sensorData : [],
            gestureData : [],
        };
    }

    get serviceUUID() {
        return "0000fdd2-0000-1000-8000-00805f9b34fb";
    }
    get characteristicUUIDs() {
        return {
            wearableDeviceInformation : "7b61ad83-041c-4333-a0ab-efb2ab7bdd43",
    
            sensorInformation : "855cb3e7-98ff-42a6-80fc-40b32a2221c1",
            sensorConfiguration : "5af38af6-000e-404b-9b46-07f77580890b",
            sensorData : "56a72ab8-4988-4cc8-a752-fbd1d54a953d",
            
            gestureInformation : "a0384f52-f95a-4bcd-b898-7b9ceec92dad",
            gestureConfiguration : "21e550af-f780-477b-9334-1f983296f1d7",
            gestureData : "9014dd4e-79ba-4802-a275-894d3b85ac74",
        }
    }

    connect() {
        const options = {
            filters : [
                {services : [this.serviceUUID]}
            ]
        };

        return navigator.bluetooth.requestDevice(options)
            .then(device => {
                this.device = device;
                return device.gatt.connect();
            })
            .then(server => {
                this.server = server;
                return server.getPrimaryService(this.serviceUUID);
            })
            .then(service => {
                this.service = service;

                const characteristicPromises = Object.values(this.characteristicUUIDs).map(characteristicUUID => {
                    return service.getCharacteristic(characteristicUUID);
                })

                return Promise.all(characteristicPromises)
            })
            .then(characteristics => {
                return new Promise((resolve, reject) => {
                    for(let name in this.characteristicUUIDs) {
                        const uuid = this.characteristicUUIDs[name];
                        const characteristic = characteristics.find(characteristic => characteristic.uuid == uuid);
                        this.characteristics[name] = characteristic;
                    }
                    

                    this.characteristics.sensorData.startNotifications();
                    this.characteristics.sensorData.addEventListener("characteristicvaluechanged", () => {
                        const sensorData = this.sensorData;
                        this.eventListeners.sensorData.forEach(callback => callback(sensorData));
                    });
                        
                    this.characteristics.gestureData.startNotifications();
                    this.characteristics.gestureData.addEventListener("characteristicvaluechanged", () => {
                        const gestureData = this.gestureData;
                        this.eventListeners.gestureData.forEach(callback => callback(gestureData));
                    })

                    this.isConnected = true;
                    resolve(this);
                })
            })
    }
    disconnect() {
        if(this.isConnected) {
            return Promise.all([this.disableAllSensors(), this.disableAllGestures()])
        }
        else
            return new Promise((resolve, reject) => {
                resolve();
            });
    }

    get wearableDeviceInformation() {
        return this.characteristics.wearableDeviceInformation.readValue()
            .then(dataView => {
                return new Promise((resolve, reject) => {
                    const wearableDeviceInformation = WearableDeviceInformation.parse(dataView);
                    resolve(wearableDeviceInformation);
                })
            })
    }

    get sensorInformation() {
        return this.characteristics.sensorInformation.readValue()
            .then(dataView => {
                return new Promise((resolve, reject) => {
                    const sensorInformation = SensorInformation.parse(dataView);
                    resolve(sensorInformation);
                })
            })
    }
    get sensorConfiguration() {
        return this.characteristics.sensorConfiguration.readValue()
            .then(dataView => {
                return new Promise((resolve, reject) => {
                    const sensorConfiguration = SensorConfiguration.parse(dataView);
                    resolve(sensorConfiguration);
                })
            })
    }

    get gestureInformation() {
        return this.characteristics.gestureInformation.readValue()
            .then(dataView => {
                return new Promise((resolve, reject) => {
                    const gestureInformation = GestureInformation.parse(dataView);
                    resolve(gestureInformation);
                })
            })
    }
    get gestureConfiguration() {
        return this.characteristics.gestureConfiguration.readValue()
            .then(dataView => {
                return new Promise((resolve, reject) => {
                    const gestureConfiguration = GestureConfiguration.parse(dataView);
                    resolve(gestureConfiguration);
                });
            });
    }

    get sensorData() {
        const dataView = this.characteristics.sensorData.value;
        if(dataView) {
            const sensorData = SensorData.parse(dataView);
            return sensorData;    
        }
        else return null;
    }
    get gestureData() {
        const dataView = this.characteristics.gestureData.value;

        if(dataView) {
            const gestureData = GestureData.parse(dataView);
            return gestureData;    
        }
        else return null;
    }

    enableSensors(sensorConfig = {}) {
        return this.sensorConfiguration
            .then(sensorConfiguration => {
                return new Promise((resolve, reject) => {
                    const sensorNames = Object.keys(sensorConfig);
                    sensorNames.forEach(sensorName => {
                        const sensorType = SensorType.from(sensorName);
                        // validating SamplePeriod?
                        const samplePeriod = sensorConfig[sensorName];
                        sensorConfiguration.enable(sensorType, samplePeriod);    
                    });
                    
                    const dataView = sensorConfiguration.data;
                    this.characteristics.sensorConfiguration.writeValue(dataView.buffer)
                        .then(() => {
                            //console.log("writeValue Complete");
                        })
                    resolve();
                })
            })
    }
    enableSensor(sensorName, samplePeriod) {
        this.enableSensors({
            [sensorName] : samplePeriod,
        });
    }
    
    disableSensors(...sensorNames) {
        const sensorConfig = {};
        sensorNames.forEach(sensorName => sensorConfig[sensorName] = 0);
        this.enableSensors(sensorConfig);
    }
    disableSensor(sensorName) {
        this.disableSensors(sensorName);
    }
    disableAllSensors() {
        return this.wearableDeviceInformation
            .then(wearableDeviceInformation => {
                this.disableSensors(...wearableDeviceInformation.availableSensors);
            });
    }

    enableGestures(...gestureNames) {
        return this.gestureConfiguration
        .then(gestureConfiguration => {
            return new Promise((resolve, reject) => {
                gestureNames.forEach(gestureName => {
                    const gestureType = GestureType.from(gestureName);
                    gestureConfiguration.set(gestureType, true);
                })
                const dataView = gestureConfiguration.data;
                this.characteristics.gestureConfiguration.writeValue(dataView.buffer);
                resolve();
            });
        });
    }
    enableGesture(gestureName) {
        return this.enableGestures(gestureName);
    }
    
    disableGestures(...gestureNames) {
        return this.gestureConfiguration
        .then(gestureConfiguration => {
            return new Promise((resolve, reject) => {
                gestureNames.forEach(gestureName => {
                    const gestureType = GestureType.from(gestureName);
                    gestureConfiguration.set(gestureType, false);    
                });
                const dataView = gestureConfiguration.data;
                this.characteristics.gestureConfiguration.writeValue(dataView.buffer);
                resolve();
            })
        })
    }
    disableGesture(gestureName) {
        return this.disableGestures(gestureName);
    }
    disableAllGestures() {
        return this.gestureConfiguration
        .then(gestureConfiguration => {
            return new Promise((resolve, reject) => {
                gestureConfiguration.disableAll();
                const dataView = gestureConfiguration.data;
                this.characteristics.gestureConfiguration.writeValue(dataView.buffer);
                resolve();
            });
        });
    }

    addEventListener(event, callback) {
        if(this.eventListeners[event] && !this.eventListeners[event].includes(callback))
            this.eventListeners[event].push(callback);
    }
    removeEventListener(event, callback) {
        if(this.eventListeners[event] && this.eventListeners[event].includes(callback))
            this.eventListeners[event].splice(this.eventListeners[event].indexOf(callback), 1);
    }
}

export default BoseARDevice;