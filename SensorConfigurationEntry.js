import SamplePeriod from "/SamplePeriod.js";
import SensorType from "/SensorType.js";

class SensorConfigurationEntry {
    constructor(sensorType, samplePeriod) {
        this.sensor = sensorType;
        this.samplePeriodMS = samplePeriod;
    }

    static parse(dataView, offset = 0) {
        let sensorId = dataView.getUint8(offset);
        let sensor = new SensorType(sensorId);
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
        return SamplePeriod.from(this.samplePeriodMS);
    }
    set samplePeriod(newValue) {
        this.samplePeriodMS = (SamplePeriod.all.includes(newValue))?
            newValue :
            0;
    }
}

export default SensorConfigurationEntry