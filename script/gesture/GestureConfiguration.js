import GestureConfigurationEntry from "./GestureConfigurationEntry.js"
import GestureType from "./GestureType.js"

class GestureConfiguration {
    constructor(entries) {
        this.entries = entries;
    }

    static parse(dataView, offset = 0) {
        let headerLength = 1;
        var entries = [];

        while(offset < dataView.byteLength) {
            let gestureId = dataView.getUint8(offset);
            let gesture = new GestureType(gestureId);

            let configLength = 1;
            
            let entry = GestureConfigurationEntry.parse(gesture, dataView, offset+1);
            entries.push(entry);
            
            offset += (configLength + headerLength);
        }

        return new this(entries);
    }

    get data() {
        let entryDataViews = this.entries.map(entry => entry.data);
        const byteLength = entryDataViews.reduce((byteLength, entryDataView) => byteLength + entryDataView.byteLength, 0);

        let arrayBuffer = new ArrayBuffer(byteLength);
        let dataView = new DataView(arrayBuffer);

        var offset = 0;
        entryDataViews.forEach(entryDataView => {
            for(let byteIndex = 0; byteIndex < entryDataView.byteLength; byteIndex++) {
                const value = entryDataView.getUint8(byteIndex);
                dataView.setUint8(offset+byteIndex, value);
            }
            offset += entryDataView.byteLength;
        });

        return dataView;
    }

    configuration(gestureType) {
        const entry = this.entries.find(entry => entry.gesture.rawValue == gestureType.rawValue);
        return entry;
    }

    enableAll() {
        this.entries.forEach(entry => entry.isEnabled = true);
    }
    disableAll() {
        this.entries.forEach(entry => entry.isEnabled = false);
    }
    isEnabled(gestureType) {
        const entry = this.configuration(gestureType);
        if(entry)
            return entry.isEnabled;
    }
    set(gestureType, enabled) {
        const entry = this.configuration(gestureType);
        if(entry) {
            entry.isEnabled = enabled;
        }
    }
}

export default GestureConfiguration;