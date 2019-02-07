class SensorType {
    constructor(sensorId) {
        this.rawValue = sensorId;
        this.name = SensorType.all[sensorId];
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

export default SensorType