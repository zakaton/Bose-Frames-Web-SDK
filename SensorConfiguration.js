import SensorConfigurationEntry from "/SensorConfigurationEntry.js"

class SensorConfiguration {
    constructor(entries) {
        this.entries = entries;
    }

    static parse(dataView, offset = 0) {
        var offset = 0;
        let length = 3;
        
        const entries = [];

        while(offset + length <= dataView.byteLength) {
            const entry = SensorConfigurationEntry.parse(dataView, offset);
            entries.push(entry);
            offset += length;
        }

        return new this(entries);
    }

    get data() {
        let entryDataViews = this.entries.map(entry => entry.data);
        const byteLength = entryDataViews.reduce((byteLength, dataView) => byteLength + dataView.byteLength, 0);
        
        const arrayBuffer = new ArrayBuffer(byteLength);
        const dataView = new DataView(arrayBuffer);

        var offset = 0;
        entryDataViews.forEach(entryDataView => {
            for(let byteIndex = 0; byteIndex < entryDataView.byteLength; byteIndex++) {
                const value = entryDataView.getUint8(byteIndex);
                dataView.setUint8(offset+byteIndex, value);
            }
            offset += entryDataView.byteLength;
        })

        return dataView;
    }

    configuration(sensorType) {
        const entry = this.entries.find(entry => entry.sensor.rawValue == sensorType.rawValue);
        return entry;
    }

    get enabledSensorsSamplePeriod() {
        const firstEnabledEntry = this.entries.find(entry => entry.isEnabled);
        if(firstEnabledEntry)
            return firstEnabledEntry.samplePeriod;
    }
    set enabledSensorsSamplePeriod(samplePeriod) {
        const enabledEntries = this.entries.filter(entry => entry.isEnabled);
        enabledEntries.forEach(entry => entry.samplePeriod = samplePeriod);
    }

    isEnabled(sensorType) {
        const entry = this.configuration(sensorType);
        if(entry)
            return entry.isEnabled;
    }
    get allSensors() {
        return this.entries.map(entry => entry.sensor);
    }
    get enabledSensors() {
        return this.entries.filter(entry => entry.isEnabled).map(entry => entry.sensor);
    }

    get disabledSensors() {
        return this.entries.filter(entry => !entry.isEnabled).map(entry => entry.sensor);   
    }

    disableAll() {
        this.entries.forEach(entry => entry.samplePeriod = 0);
    }
    disable(sensorType) {
        const entry = this.configuration(sensorType);
        entry.samplePeriod = 0;
    }
    enable(sensorType, samplePeriod) {
        const entry = this.configuration(sensorType);
        entry.samplePeriod = samplePeriod;
    }
}

export default SensorConfiguration