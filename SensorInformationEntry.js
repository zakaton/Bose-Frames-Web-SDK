import Range from "/Range.js"
import SamplePeriod from "/SamplePeriod.js"

class SensorInformationEntry {
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
        let availableSamplePeriods = SamplePeriod.set(samplePeriodBitmask);

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

export default SensorInformationEntry