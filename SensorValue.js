import SensorType from "/SensorType.js"
import SensorTimestamp from "/SensorTimestamp.js"
import SensorSample from "/SensorSample.js"

class SensorValue {
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
            let sensorType = new SensorType(sensorId);
            
            let timestamp = SensorTimestamp.parse(dataView, offset+1);

            let sample = SensorSample.parse(sensorType, dataView, offset+headerLength);
            let value = new SensorValue(sensorType, timestamp, sample);
            result.push(value);

            offset += (headerLength + sample.byteLength);
        }

        return result;
    }
}

export default SensorValue