import GestureInformationEntry from "/GestureInformationEntry.js"

class GestureInformation {
    constructor(entries) {
        this.entries = entries;
    }

    static parse(dataView, offset = 0) {
        var offset = 0;
        let length = 2;

        var entries = [];

        while(offset + length < dataView.byteLength) {
            const entry = GestureInformationEntry.parse(dataView, offset);
            entries.push(entry);
            offset += length;
        }

        return new this(entries);
    }
}

export default GestureInformation