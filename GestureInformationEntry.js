class GestureInformationEntry {
    constructor(gestureId, configurationPayloadLength) {
        this.gestureid = gestureId;
        this.configurationPayloadLength = configurationPayloadLength;
    }

    static parse(dataView, offset = 0) {
        let gestureId = dataView.getUint8(offset);
        let configurationPayloadLength = dataView.getUint8(offset+1);

        return new this(gestureId, configurationPayloadLength);
    }
}

export default GestureInformationEntry