class QuaternionAccuracy {
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

export default QuaternionAccuracy