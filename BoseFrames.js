class BoseFrames {
    constructor() {
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
                    })
                        
                    this.characteristics.gestureData.startNotifications();
                    this.characteristics.gestureData.addEventListener("characteristicvaluechanged", () => {
                        const gestureData = this.gestureData;
                        this.eventListeners.gestureData.forEach(callback => callback(gestureData));
                    })

                    resolve(this);
                })
            })
    }
    disconnect() {
        this.disableAllSensors();
        this.disableAllGestures();
    }

    get wearableDeviceInformation() {
        return this.characteristics.wearableDeviceInformation.readValue()
            .then(dataView => {
                return new Promise((resolve, reject) => {
                    const wearableDeviceInformation = BoseFrames.WearableDeviceInformation.parse(dataView);
                    resolve(wearableDeviceInformation);
                })
            })
    }

    get sensorInformation() {
        return this.characteristics.sensorInformation.readValue()
            .then(dataView => {
                return new Promise((resolve, reject) => {
                    const sensorInformation = BoseFrames.SensorInformation.parse(dataView);
                    resolve(sensorInformation);
                })
            })
    }
    get sensorConfiguration() {
        return this.characteristics.sensorConfiguration.readValue()
            .then(dataView => {
                return new Promise((resolve, reject) => {
                    const sensorConfiguration = BoseFrames.SensorConfiguration.parse(dataView);
                    resolve(sensorConfiguration);
                })
            })
    }

    get gestureInformation() {
        return this.characteristics.gestureInformation.readValue()
            .then(dataView => {
                return new Promise((resolve, reject) => {
                    const gestureInformation = BoseFrames.GestureInformation.parse(dataView);
                    resolve(gestureInformation);
                })
            })
    }
    get gestureConfiguration() {
        return this.characteristics.gestureConfiguration.readValue()
            .then(dataView => {
                return new Promise((resolve, reject) => {
                    const gestureConfiguration = BoseFrames.GestureConfiguration.parse(dataView);
                    resolve(gestureConfiguration);
                })
            })
    }

    get sensorData() {
        const dataView = this.characteristics.sensorData.value;
        if(dataView) {
            const sensorData = BoseFrames.SensorData.parse(dataView);
            return sensorData;    
        }
        else return null;
    }
    get gestureData() {
        const dataView = this.characteristics.gestureData.value;

        if(dataView) {
            const gestureData = BoseFrames.GestureData.parse(dataView);
            return gestureData;    
        }
        else return null;
    }

    enableSensor(sensorName, samplePeriod) {
        return this.sensorConfiguration
            .then(sensorConfiguration => {
                return new Promise((resolve, reject) => {
                    const sensorType = BoseFrames.SensorType.from(sensorName);
                    sensorConfiguration.enable(sensorType, samplePeriod);
                    const dataView = sensorConfiguration.data;
                    this.characteristics.sensorConfiguration.writeValue(dataView.buffer)
                        .then(() => {
                            //console.log("writeValue Complete");
                        })
                    resolve();
                })
            })
    }
    disableSensor(sensorName) {
        return this.sensorConfiguration
        .then(sensorConfiguration => {
            return new Promise((resolve, reject) => {
                const sensorType = BoseFrames.SensorType.from(sensorName);
                sensorConfiguration.disable(sensorType);
                const dataView = sensorConfiguration.data;
                this.characteristics.sensorConfiguration.writeValue(dataView.buffer);
                resolve();
            })
        })
    }
    disableAllSensors() {
        return this.sensorConfiguration
        .then(sensorConfiguration => {
            return new Promise((resolve, reject) => {
                sensorConfiguration.disableAll();
                const dataView = sensorConfiguration.data;
                this.characteristics.sensorConfiguration.writeValue(dataView.buffer);
                resolve();
            })
        })
    }

    enableGesture(gestureName) {
        return this.gestureConfiguration
        .then(gestureConfiguration => {
            return new Promise((resolve, reject) => {
                const gestureType = BoseFrames.GestureType.from(gestureName);
                gestureConfiguration.set(gestureType, true);
                const dataView = gestureConfiguration.data;
                this.characteristics.gestureConfiguration.writeValue(dataView.buffer);
                console.log(gestureConfiguration)
                resolve();
            })
        })
    }
    disableGesture(gestureName) {
        return this.gestureConfiguration
        .then(gestureConfiguration => {
            return new Promise((resolve, reject) => {
                const gestureType = BoseFrames.GestureType.from(gestureName);
                gestureConfiguration.set(gestureType, false);
                const dataView = gestureConfiguration.data;
                this.characteristics.gestureConfiguration.writeValue(dataView.buffer);
                resolve();
            })
        })
    }
    disableAllGestures() {
        return this.gestureConfiguration
        .then(gestureConfiguration => {
            return new Promise((resolve, reject) => {
                gestureConfiguration.disableAll();
                const dataView = gestureConfiguration.data;
                this.characteristics.gestureConfiguration.writeValue(dataView.buffer);
                resolve();
            })
        })
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

BoseFrames.WearableDeviceInformation = class {
    constructor(majorVersion, minorVersion, productID, variant, availableSensors, availableGestures, transmissionPeriod, maximumPayloadPerTransmissionPeriod, maximumActiveSensors, deviceStatus) {
        this.majorVersion = majorVersion;
        this.minorVersion = minorVersion;
        this.productID = productID;
        this.variant = variant;
        this.availableSensors = availableSensors;
        this.availableGestures = availableGestures;
        this.transmissionPeriod = transmissionPeriod;
        this.maximumPayloadPerTransmissionPeriod = maximumPayloadPerTransmissionPeriod;
        this.maximumActiveSensors = maximumActiveSensors;
        this.deviceStatus = deviceStatus;
    }

    static parse(dataView, offset = 0) {
        let majorVersion = dataView.getUint8(offset);
        let minorVersion = dataView.getUint8(offset+1);
        let productID = dataView.getUint16(offset+2, false);
        let variant = dataView.getUint8(offset+4);
        
        let availableSensorsBitmask = dataView.getUint32(offset+5, false);
        let availableSensors = BoseFrames.SensorType.set(availableSensorsBitmask);
        
        let availableGesturesBitmask = dataView.getUint32(offset+9, false);
        let availableGestures = BoseFrames.GestureType.set(availableGesturesBitmask);

        let transmissionPeriod = dataView.getUint8(offset+16);
        let maximumPayloadPerTransmissionPeriod = dataView.getUint16(offset+14, false);
        let maximumActiveSensors = dataView.getUint8(offset+16);
        let deviceStatus = BoseFrames.DeviceStatus.parse(dataView, offset+17);

        return new this(majorVersion, minorVersion, productID, variant, availableSensors, availableGestures, transmissionPeriod, maximumPayloadPerTransmissionPeriod, maximumActiveSensors, deviceStatus);
    }
}

BoseFrames.DeviceStatus = class {
    constructor(deviceStatusMask) {
        this.rawValue = deviceStatusMask;
    }

    static get pairingEnabled() {
        return new this(1 << 0);
    }
    static get secureBLEPairingRequired() {
        return new this(1 << 1);
    }
    static get alreadyPairedToClient() {
        return new this(1 << 2);
    }
    static get wearableSensorsServiceSuspended() {
        return new this(1 << 3);
    }

    static parse(dataView, offset=0) {
        const deviceStatusMask = dataView.getUint16(offset, false);
        return new this(deviceStatusMask);
    }
}
/*
BoseFrames.GestureType = class {
    constructor(gestureId) {
        this.rawValue = gestureId;
        this.name = GestureType.all[gestureId-128];
    }

    static get all() {
        return [
            "singleTap",
            "doubleTap",
            "headNod",
            "headShake",
        ]
    }

    get mask() {
        return 1 << this.rawValue;
    }

    static set(mask) {
        return this.all.filter((name, rawValue) => (1 << rawValue) & mask);
    }

    static parse(dataView, offset = 0) {
        const id = dataView.getUint8(dataView);
        return new this(id);
    }

    static from(gestureName) {
        const gestureId = 128 + this.all.indexOf(gestureName);
        return new this(gestureId);
    }
}
*/

BoseFrames.SensorInformation = class {
    constructor(entries) {
        this.entries = entries;
    }

    static parse(dataView, offset = 0) {
        var offset = 0;
        let length = 12;

        var entries = [];

        while(offset + length <= dataView.byteLength) {
            let entry = BoseFrames.SensorInformationEntry.parse(dataView, offset);
            entries.push(entry);
            offset += length;
        }

        return new this(entries);
    }
}

BoseFrames.SensorInformationEntry = class {
    constructor(sensorId, scaledValueRange, rawValueRange, availableSamplePeriods, sampleLength) {
        this.sensorId = sensorId;
        this.scaledValueRange = scaledValueRange;
        this.rawValueRange = rawValueRange;
        this.availableSamplePeriods = availableSamplePeriods;
        this.sampleLength = sampleLength;

        this.scaleFactor = (scaledValueRange.upperBound - scaledValueRange.lowerBound)/(rawValueRange.upperBound-rawValueRange.lowerBound);
    }

    static parse(dataView, offset = 0) {
        let sensorId = dataView.getUint8(offset);

        let minScaled = dataView.getInt16(offset+1, false);
        let maxScaled = dataView.getInt16(offset+2, false);

        let minRaw = dataView.getInt16(offset+5, false);
        let maxRaw = dataView.getInt16(offset+7, false);

        let samplePeriodBitmask = dataView.getUint16(offset+9);
        let availableSamplePeriods = BoseFrames.SamplePeriod.set(samplePeriodBitmask);

        let sampleLength = dataView.getUint8(offset+11);

        let scaledValueRange = new Range(minScaled, maxScaled);
        let rawValueRange = new Range(minRaw, maxRaw);

        return new this(sensorId, scaledValueRange, rawValueRange, availableSamplePeriods, sampleLength);
    }

    get scaleFunction() {
        let minRaw = this.rawValueRange.lowerBound;
        let minScaled = this.scaledValueRange.lowerBound;
        let scaleFactor = this.scaleFactor;

        return value => (((value-minRaw) * scaleFactor) + minScaled);
    }
}

BoseFrames.SensorConfiguration = class {
    constructor(entries) {
        this.entries = entries;
    }

    static parse(dataView, offset = 0) {
        var offset = 0;
        let length = 3;
        
        const entries = [];

        while(offset + length <= dataView.byteLength) {
            const entry = BoseFrames.SensorConfigurationEntry.parse(dataView, offset);
            entries.push(entry);
            offset += length;
        }

        return new this(entries);
    }

    get data() {
        let entryDataViews = this.entries.map(entry => entry.data);
        const byteLength = entryDataViews.reduce((byteLength, dataView) => byteLength + dataView.byteLength, 0);
        
        const arrayBuffer = new ArrayBuffer(byteLength);
        const dataView = new DataView(arrayBuffer);

        var offset = 0;
        entryDataViews.forEach(entryDataView => {
            for(let byteIndex = 0; byteIndex < entryDataView.byteLength; byteIndex++) {
                const value = entryDataView.getUint8(byteIndex);
                dataView.setUint8(offset+byteIndex, value);
            }
            offset += entryDataView.byteLength;
        })

        return dataView;
    }

    configuration(sensorType) {
        const entry = this.entries.find(entry => entry.sensor.rawValue == sensorType.rawValue);
        return entry;
    }

    get enabledSensorsSamplePeriod() {
        const firstEnabledEntry = this.entries.find(entry => entry.isEnabled);
        if(firstEnabledEntry)
            return firstEnabledEntry.samplePeriod;
    }
    set enabledSensorsSamplePeriod(samplePeriod) {
        const enabledEntries = this.entries.filter(entry => entry.isEnabled);
        enabledEntries.forEach(entry => entry.samplePeriod = samplePeriod);
    }

    isEnabled(sensorType) {
        const entry = this.configuration(sensorType);
        if(entry)
            return entry.isEnabled;
    }
    get allSensors() {
        console.log(this.entrues);
        return this.entries.map(entry => entry.sensor);
    }
    get enabledSensors() {
        return this.entries.filter(entry => entry.isEnabled).map(entry => entry.sensor);
    }

    get disabledSensors() {
        return this.entries.filter(entry => !entry.isEnabled).map(entry => entry.sensor);   
    }

    disableAll() {
        this.entries.forEach(entry => entry.samplePeriod = 0);
    }
    disable(sensorType) {
        const entry = this.configuration(sensorType);
        entry.samplePeriod = 0;
    }
    enable(sensorType, samplePeriod) {
        const entry = this.configuration(sensorType);
        entry.samplePeriod = samplePeriod;
    }
}

BoseFrames.SensorConfigurationEntry = class {
    constructor(sensorType, samplePeriod) {
        this.sensor = sensorType;
        this.samplePeriodMS = samplePeriod;
    }

    static parse(dataView, offset = 0) {
        let sensorId = dataView.getUint8(offset);
        let sensor = new BoseFrames.SensorType(sensorId);
        let samplePeriod = dataView.getUint16(offset+1, false);
        
        return new this(sensor, samplePeriod);
    }

    get data() {
        const arrayBuffer = new ArrayBuffer(3);
        const dataView = new DataView(arrayBuffer);

        dataView.setUint8(0, this.sensor.rawValue);
        dataView.setUint16(1, this.samplePeriodMS, false);

        return dataView;
    }

    get isEnabled() {
        return this.samplePeriodMS !== 0;
    }

    get samplePeriod() {
        return BoseFrames.SamplePeriod.from(this.samplePeriodMS);
    }
    set samplePeriod(newValue) {
        this.samplePeriodMS = (BoseFrames.SamplePeriod.all.includes(newValue))?
            newValue :
            0;
    }
}

BoseFrames.GestureInformation = class {
    constructor(entries) {
        this.entries = entries;
    }

    static parse(dataView, offset = 0) {
        var offset = 0;
        let length = 2;

        var entries = [];

        while(offset + length < dataView.byteLength) {
            const entry = BoseFrames.GestureInformationEntry.parse(dataView, offset);
            entries.push(entry);
            offset += length;
        }

        return new this(entries);
    }
}

BoseFrames.GestureInformationEntry = class {
    constructor(gestureId, configurationPayloadLength) {
        this.gestureid = gestureId;
        this.configurationPayloadLength = configurationPayloadLength;
    }

    static parse(dataView, offset = 0) {
        let gestureId = dataView.getUint8(offset);
        let configurationPayloadLength = dataView.getUint8(offset+1);

        return new this(gestureId, configurationPayloadLength);
    }
}

BoseFrames.GestureConfiguration = class {
    constructor(entries) {
        this.entries = entries;
    }

    static parse(dataView, offset = 0) {
        let headerLength = 1;
        var offset = 0;
        var entries = [];

        while(offset < dataView.byteLength) {
            let gestureId = dataView.getUint8(offset);
            let gesture = new BoseFrames.GestureType(gestureId);

            let configLength = 1;
            
            let entry = BoseFrames.GestureConfigurationEntry.parse(gesture, dataView, 1);
            entries.push(entry);
            
            offset += (configLength + headerLength);
        }

        return new this(entries);
    }

    get data() {
        let entryDataViews = this.entries.map(entry => entry.data);
        const byteLength = entryDataViews.reduce((byteLength, entryDataView) => byteLength + entryDataView.byteLength, 0);
        
        let arrayBuffer = new ArrayBuffer(byteLength);
        let dataView = new DataView(arrayBuffer);

        var offset = 0;
        entryDataViews.forEach(entryDataView => {
            for(let byteIndex = 0; byteIndex < entryDataView.byteLength; byteIndex++) {
                const value = entryDataView.getUint8(byteIndex);
                dataView.setUint8(offset+byteIndex, value);
            }
            offset += entryDataView.byteLength;
        })

        return dataView;
    }

    configuration(gestureType) {
        const entry = this.entries.find(entry => entry.gesture.rawValue = gestureType.rawValue);
        return entry;
    }

    enableAll() {
        this.entries.forEach(entry => entry.isEnabled = true);
    }
    disableAll() {
        this.entries.forEach(entry => entry.isEnabled = false);
    }
    isEnabled(gestureType) {
        const entry = this.configuration(gestureType);
        if(entry)
            return entry.isEnabled;
    }
    set(gestureType, enabled) {
        const entry = this.configuration(gestureType);
        if(entry) {
            entry.isEnabled = enabled;
        }
    }
}

BoseFrames.GestureConfigurationEntry = class {
    constructor(gesture, isEnabled) {
        this.gesture = gesture;
        this.isEnabled = isEnabled;
    }

    static parse(gesture, dataView, offset = 0) {
        let contents = dataView.getUint8(offset);
        let isEnabled = (contents & 0x01) == 0x01;
        return new this(gesture, isEnabled);
    }

    get data() {
        const arrayBuffer = new ArrayBuffer(2);
        const dataView = new DataView(arrayBuffer);

        dataView.setUint8(0, this.gesture.rawValue);
        dataView.setUint8(1, this.isEnabled? 0x01 : 0x00);
        
        return dataView;
    }
}

BoseFrames.SensorData = class {
    constructor(values) {
        this.values = values;
    }

    static parse(dataView) {
        const values = BoseFrames.SensorValue.parse(dataView);
        return new this(values);
    }
}

BoseFrames.GestureData = class {
    constructor(gestureType, sensorTimestamp) {
        this.gesture = gestureType;
        this.timestamp = sensorTimestamp
    }

    static parse(dataView, offset = 0) {
        const gesture = BoseFrames.GestureType.parse(dataView, offset);
        const timestamp = BoseFrames.SensorTimestamp.parse(dataView, offset+1);

        return new this(gesture, timestamp);
    }
}

BoseFrames.SensorType = class {
    constructor(sensorId) {
        this.rawValue = sensorId;
        this.name = BoseFrames.SensorType.all[sensorId];
    }

    static get all() {
        return [
            "accelerometer",
            "gyroscope",
            "rotation",
            "gameRotation",
            "orientation",
            "magnetometer",
            "uncalibratedMagnetometer",
        ]
    }

    get mask() {
        return 1 << this.rawValue;
    }

    static set(mask) {
        return this.all.filter((name, rawValue) => (1 << rawValue) & mask);
    }

    static from(sensorName) {
        const sensorId = this.all.indexOf(sensorName);
        return new this(sensorId);
    }
}

BoseFrames.SensorValue = class {
    constructor(sensor, timestamp, sample) {
        this.sensor = sensor;
        this.timestamp = timestamp;
        this.sample = sample;
    }

    static parse(dataView) {
        let headerLength = 3;

        var offset = 0;
        var result = [];

        while(offset < dataView.byteLength) {
            let sensorId = dataView.getUint8(offset);
            let sensorType = new BoseFrames.SensorType(sensorId);
            
            let timestamp = BoseFrames.SensorTimestamp.parse(dataView, offset+1);

            let sample = BoseFrames.SensorSample.parse(sensorType, dataView, offset+headerLength);
            let value = new BoseFrames.SensorValue(sensorType, timestamp, sample);
            result.push(value);

            offset += (headerLength + sample.byteLength);
        }

        return result;
    }
}

BoseFrames.SamplePeriod = class {
    constructor(id) {
        this.rawValue = id;
        this.milliseconds = BoseFrames.SamplePeriod.all[id];
    }

    static get all() {
        return [
            320,
            160,
            80,
            40,
            20,
        ];
    }

    get mask() {
        return 1 << this.rawValue;
    }

    static set(mask) {
        return this.all.filter((name, rawValue) => (1 << rawValue) & mask);
    }

    static from(milliseconds) {
        return (this.all.includes(milliseconds))?
            new this(this.all.indexOf(milliseconds)) :
            null;
    }
}

BoseFrames.SensorTimestamp = class {
    constructor(timestamp) {
        this.timestamp = timestamp;
    }

    static parse(dataView, offset = 0) {
        const timestamp = dataView.getUint16(offset, false);
        return new this(timestamp);
    }
}

BoseFrames.SensorSample = class {
    constructor(sensorType, value, accuracy, bias) {
        this.sensorType = sensorType;

        this.value = value;
        this.accuracy = accuracy;
        this.bias = bias;
    }

    static metadata(sensorType) {
        switch(sensorType.name) {
            case "accelerometer":
                return {
                    value : BoseFrames.Vector,
                    accuracy : BoseFrames.VectorAccuracy,
                };
            case "gyroscope":
                return {
                    value : BoseFrames.Vector,
                    accuracy : BoseFrames.VectorAccuracy,
                };
            case "rotation":
                return {
                    value : BoseFrames.Quaternion,
                    accuracy : BoseFrames.QuaternionAccuracy,
                };
            case "gameRotation":
                return {
                    value : BoseFrames.Quaternion,
                };
            case "orientation":
                return {
                    value : BoseFrames.Vector,
                    accuracy : BoseFrames.VectorAccuracy,
                };
            case "magnetometer":
                return {
                    value : BoseFrames.Vector,
                    accuracy : BoseFrames.VectorAccuracy,
                };
            case "uncalibratedMagnetometer":
                return {
                    value : BoseFrames.Vector,
                    bias : BoseFrames.Vector,
                };
            default:
                return {};
        }
    }
    get metadata() {
        return SensorSample.metadata(this.sensorType);
    }

    static byteLength(sensorType) {
        const metadata = this.metadata(sensorType);

        var byteLength = 0;
        Object.values(metadata).forEach(classRef => {
            byteLength += classRef.byteLength;
        })

        return byteLength;
    }

    get byteLength() {
        return BoseFrames.SensorSample.byteLength(this.sensorType);
    }

    static parse(sensorType, dataView, offset = 0) {
        let value, accuracy, bias;
        const metadata = this.metadata(sensorType);
        value = metadata.value.parse(dataView, offset);
        offset += value.byteLength;

        if(metadata.accuracy) {
            accuracy = metadata.accuracy.parse(dataView, offset);
            offset += accuracy.byteLength;
        }

        if(metadata.bias) {
            bias = metadata.bias.parse(dataView, offset);
            offset += bias.byteLength;
        }

        return new this(sensorType, value, accuracy, bias);
    }
}

BoseFrames.GestureType = class {
    constructor(gestureId) {
        this.rawValue = gestureId;
        this.name = BoseFrames.GestureType.all[gestureId-128];
    }

    static get all() {
        return [
            "singleTap",
            "doubleTap",
            "headNod",
            "headShake",
        ]
    }

    get mask() {
        return 1 << this.rawValue;
    }

    static set(mask) {
        return this.all.filter((name, rawValue) => (1 << rawValue) & mask);
    }

    static parse(dataView, offset = 0) {
        const id = dataView.getUint8(dataView);
        return new this(id);
    }

    static from(gestureName) {
        const gestureId = 128 + this.all.indexOf(gestureName);
        console.log(gestureId);
        return new this(gestureId);
    }
}

BoseFrames.Vector = class extends THREE.Vector3 {
    static get byteLength() {
        return 6;
    }

    static parse(dataView, offset = 0) {
        function getComponent(index) {
            return dataView.getInt16(offset + (index*2), false)/Math.pow(2, 12);
        }

        const x = getComponent(0);
        const y = getComponent(1);
        const z = getComponent(2);

        const vector = new this(x, y, z);
        vector.applyMatrix4(BoseFrames.correctionMatrix);
        return vector;
    }
}

BoseFrames.VectorAccuracy = class {
    constructor(accuracy) {
        this.accuracy = accuracy;
        this.rawValue = ["unreliable", "low", "medium", "high"][accuracy];
    }

    static get byteLength() {
        return 1;
    }

    static parse(dataView, offset = 0) {
        const accuracy = dataView.getUint8(offset);
        return new this(accuracy);
    }
}

BoseFrames.Quaternion = class extends THREE.Quaternion {
    get pitch() {
        const {w, x, y, z} = this;

        let sinp = 2 * (w * x + y * z);
        let cosp = 1 - 2 * (x * x + y * y);

        let pitch = Math.atan2(sinp, cosp) + Math.PI;

        return (pitch > Math.PI)?
            pitch - 2 * Math.PI :
            pitch;
    }

    get roll() {
        const {w, x, y, z} = this;

        let sinr = 2 * (w*y - z*x);
        if(Math.abs(sinr) >= 1) {
            return -(Math.sign(sinr) * Math.PI/2);
        }
        else {
            return -Math.asin(sinr);
        }
    }
    
    get yaw() {
        const {w, x, y, z} = this;

        const siny = 2 * (w*z + x*y);
        const cosy = 1 - 2 * (y*y + z*z);

        return -Math.atan2(siny, cosy);
    }

    static parse(dataView, offset = 0) {
        function getComponent(index) {
            return dataView.getInt16(offset + (index*2), false)/Math.pow(2, 14);
        }

        const x = getComponent(0);
        const y = getComponent(1);
        const z = getComponent(2);
        const w = getComponent(3);

        const quaternion = new this(x, y, z, w);
        BoseFrames.Quaternion.correctOrientationForTHREEjs(quaternion);
        return quaternion;
    }

    static get byteLength() {
        return 8;
    }

    static correctOrientationForTHREEjs(quaternion) {
        quaternion.multiply(BoseFrames.correctionQuaternion);
    }
}

BoseFrames.QuaternionAccuracy = class {
    constructor(estimatedAccuracy) {
        this.estimatedAccuracy = estimatedAccuracy;
    }

    static get byteLength() {
        return 2;
    }

    static parse(dataView, offset = 0) {
        const estimatedAccuracy = dataView.getInt16(offset, false);
        return new this(estimatedAccuracy);
    }
}

function createCorrectionMatrix() {
    const correctionMatrix = new THREE.Matrix4();

    const vectorX = new THREE.Vector3();
    const vectorY = new THREE.Vector3();
    const vectorZ = new THREE.Vector3();

    correctionMatrix.extractBasis(vectorX, vectorY, vectorZ);

    const reflectionZ = new THREE.Vector3(1, 1, -1);

    vectorX.multiply(reflectionZ);
    vectorY.multiply(reflectionZ);
    vectorZ.multiply(reflectionZ);

    correctionMatrix.makeBasis(vectorX, vectorZ, vectorY);

    return correctionMatrix;    
}

BoseFrames.Range = class {
    constructor(lower, upper) {
        this.lowerBound = lower;
        this.upperBound = upper;
    }
}

BoseFrames.correctionMatrix = createCorrectionMatrix();

BoseFrames.correctionQuaternion = new THREE.Quaternion();
BoseFrames.correctionQuaternion.setFromRotationMatrix(BoseFrames.correctionMatrix);