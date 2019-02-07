import Vector from "/Vector.js"
import VectorAccuracy from "/VectorAccuracy.js"
import Quaternion from "/Quaternion.js"
import QuaternionAccuracy from "/QuaternionAccuracy.js"

class SensorSample {
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
                    value : Vector,
                    accuracy : VectorAccuracy,
                };
            case "gyroscope":
                return {
                    value : Vector,
                    accuracy : VectorAccuracy,
                };
            case "rotation":
                return {
                    value : Quaternion,
                    accuracy : QuaternionAccuracy,
                };
            case "gameRotation":
                return {
                    value : Quaternion,
                };
            case "orientation":
                return {
                    value : Vector,
                    accuracy : VectorAccuracy,
                };
            case "magnetometer":
                return {
                    value : Vector,
                    accuracy : VectorAccuracy,
                };
            case "uncalibratedMagnetometer":
                return {
                    value : Vector,
                    bias : Vector,
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
        return SensorSample.byteLength(this.sensorType);
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

export default SensorSample