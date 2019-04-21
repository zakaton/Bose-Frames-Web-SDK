import BoseARDevice from "./BoseARDevice.js";

class BoseARDeviceElement extends HTMLElement {
    constructor() {
        super();
        this.boseARDevice = new BoseARDevice();

        window.addEventListener("beforeunload", event => {
            this.disconnect();
        });

        this.root = this.attachShadow({mode : "open"});
        
        this.connectButton = document.createElement("button");
        this.connectButton.innerText = '🕶️';
        this.connectButton.addEventListener("click", event => {
            this.connect();
        });
        this.root.appendChild(this.connectButton);

        this.addEventListener("connect", event => {
            this.root.removeChild(this.connectButton);
        });

        this.boseARDevice.addEventListener("sensorData", sensorData => {
            const sensorValues = sensorData.values;
            sensorValues.forEach(sensorValue => {
                const {sample, sensor, timestamp} = sensorValue;
                const {value, bias, accuracy} = sample;

                var customEvent;

                switch(sensorValue.sensor.name) {
                    case "accelerometer":
                        this.setAttribute("accelerometerX", value.x);
                        this.setAttribute("accelerometerY", value.y);
                        this.setAttribute("accelerometerZ", value.z);

                        this.setAttribute("accelerometerTimestamp", timestamp.timestamp)

                        customEvent = new CustomEvent("accelerometer", {
                            
                        });
                        customEvent.accelerometer = value;
                        break;

                    case "gyroscope":
                        this.setAttribute("gyroscopeX", value.x);
                        this.setAttribute("gyroscopeY", value.y);
                        this.setAttribute("gyroscopeZ", value.z);

                        this.setAttribute("gyroscopeTimestamp", timestamp.timestamp);

                        customEvent = new CustomEvent("gyroscope", {

                        });
                        customEvent.gyroscope = value;
                        break;

                    case "rotation":
                        this.setAttribute("rotationW", value.w);
                        this.setAttribute("rotationX", value.x);
                        this.setAttribute("rotationY", value.y);
                        this.setAttribute("rotationZ", value.z);

                        this.setAttribute("rotationPitch", value.pitch);
                        this.setAttribute("rotationRoll", value.roll);
                        this.setAttribute("rotationYaw", value.yaw);

                        this.setAttribute("rotationTimestamp", timestamp.timestamp);

                        customEvent = new CustomEvent("rotation", {

                        });
                        customEvent.rotation = value;
                        break;

                    case "gameRotation":
                        this.setAttribute("gameRotationW", value.w);
                        this.setAttribute("gameRotationX", value.x);
                        this.setAttribute("gameRotationY", value.y);
                        this.setAttribute("gameRotationZ", value.z);

                        this.setAttribute("gameRotationPitch", value.pitch);
                        this.setAttribute("gameRotationRoll", value.roll);
                        this.setAttribute("gameRotationYaw", value.yaw);

                        this.setAttribute("gameRotationTimestamp", timestamp.timestamp);

                        customEvent = new CustomEvent("gameRotation", {

                        });
                        customEvent.gameRotation = value;
                        break;

                    default:
                        break;
                }

                this.dispatchEvent(customEvent);
            })
        });

        this.boseARDevice.addEventListener("gestureData", gestureData => {
            this.setAttribute(gestureData.gesture.name + "Timestamp", gestureData.timestamp.timestamp);

            const customEvent = new CustomEvent(gestureData.gesture.name, {

            });
            customEvent.gesture = gestureData.gesture;
            
            this.dispatchEvent(customEvent);
        });
    }

    convertCamelCaseToHyphenated(string) {
        return string.replace(/([A-Z])/g, (match, _, index) => {
            return (index > 0)?
                '-' + match.toLowerCase() :
                match.toLowerCase();
        });
    }
    convertHyphenatedToCamelCase(string) {
        return string.replace(/-([a-z])/g, (match, _, index) => {
            return match[1].toUpperCase();
        });
    }
    convertRateToNumber(rate) {
        return (!isNaN(rate))?
            Number(rate) :
            {
                "very-slow" : 320,
                slow : 160,
                normal : 80,
                fast : 40,
                "very-fast" : 20,
            }[rate] || 320;
    }

    static get observedAttributes() {
        return [
            "rate",

            "accelerometer",
            "gyroscope",
            "rotation",
            "game-rotation",

            "single-tap",
            "double-tap",
            "head-nod",
            "head-shake",
        ];
    }

    attributeChangedCallback(name, oldValue, newValue) {
        if(this.boseARDevice.isConnected) {
            if(["accelerometer", "gyroscope", "rotation", "game-rotation"].includes(name)) {
                name = this.convertHyphenatedToCamelCase(name);

                if(newValue !== null)
                    this.boseARDevice.enableSensor(name, this.convertRateToNumber(newValue));
                else
                    this.boseARDevice.disableSensor(name);
            }
            else if(["single-tap", "double-tap", "head-nod", "head-shake"].includes(name)) {
                name = this.convertHyphenatedToCamelCase(name);

                if(newValue !== null)
                    this.boseARDevice.enableGesture(name);
                else
                    this.boseARDevice.disableGesture(name);
            }
            else {
                // Other attributes...
            }
        }
    }

    connect() {
        return this.boseARDevice.connect()
                    .then(() => {
                        const sensorConfig = {};
                        ["accelerometer", "gyroscope", "rotation", "gameRotation"].forEach(sensorName => {
                            const sensorAttribute = this.getAttribute(sensorName);
                            if(sensorAttribute !== null) {
                                const samplePeriod = this.convertRateToNumber(sensorAttribute);
                                sensorConfig[sensorName] = Number(samplePeriod);
                            }
                        });
                        this.boseARDevice.enableSensors(sensorConfig);

                        const enabledGestureNames = ["single-tap", "double-tap", "head-nod", "head-shake"]
                            .filter(gestureName => this.getAttribute(gestureName) !== null)
                            .map(gestureName => this.convertHyphenatedToCamelCase(gestureName));
                        this.boseARDevice.enableGestures(...enabledGestureNames);

                        const customEvent = new CustomEvent("connect", {
                            
                        });

                        customEvent.boseARDevice = this.boseARDevice;

                        this.dispatchEvent(customEvent);
                    });
    }
    disconnect() {
        return this.boseARDevice.disconnect()
            .then(() => {
                const customEvent = new CustomEvent("disconnect", {
                    
                });

                customEvent.boseARDevice = this.boseARDevice;

                this.dispatchEvent(customEvent);
            });
    }
}

if(document.createElement("bose-ar-device").constructor == HTMLElement)
    customElements.define("bose-ar-device", BoseARDeviceElement);

export default BoseARDeviceElement;