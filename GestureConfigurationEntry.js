class GestureConfigurationEntry {
    constructor(gesture, isEnabled) {
        this.gesture = gesture;
        this.isEnabled = isEnabled;
    }

    static parse(gesture, dataView, offset = 0) {
        let contents = dataView.getUint8(offset);
        let isEnabled = (contents & 0x01) == 0x01;
        return new this(gesture, isEnabled);
    }

    get data() {
        const arrayBuffer = new ArrayBuffer(2);
        const dataView = new DataView(arrayBuffer);

        dataView.setUint8(0, this.gesture.rawValue);
        dataView.setUint8(1, this.isEnabled? 0x01 : 0x00);
        
        return dataView;
    }
}

export default GestureConfigurationEntry