import SensorInformationEntry from "/SensorInformationEntry.js"

class SensorInformation {
    constructor(entries) {
        this.entries = entries;
    }

    static parse(dataView, offset = 0) {
        var offset = 0;
        let length = 12;

        var entries = [];

        while(offset + length <= dataView.byteLength) {
            let entry = SensorInformationEntry.parse(dataView, offset);
            entries.push(entry);
            offset += length;
        }

        return new this(entries);
    }
}

export default SensorInformation