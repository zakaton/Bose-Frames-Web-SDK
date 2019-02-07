class VectorAccuracy {
    constructor(accuracy) {
        this.accuracy = accuracy;
        this.rawValue = ["unreliable", "low", "medium", "high"].indexOf(accuracy);
    }

    static get byteLength() {
        return 1;
    }

    static parse(dataView, offset = 0) {
        const accuracy = dataView.getUint8(offset);
        return new this(accuracy);
    }
}

export default VectorAccuracy