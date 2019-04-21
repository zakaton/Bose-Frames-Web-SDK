class SensorTimestamp {
    constructor(timestamp) {
        this.timestamp = timestamp;
    }

    static parse(dataView, offset = 0) {
        const timestamp = dataView.getUint16(offset, false);
        return new this(timestamp);
    }
}

export default SensorTimestamp