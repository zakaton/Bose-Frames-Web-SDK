import SensorValue from "/SensorValue.js"

class SensorData {
    constructor(values) {
        this.values = values;
    }

    static parse(dataView) {
        const values = SensorValue.parse(dataView);
        return new this(values);
    }
}

export default SensorData