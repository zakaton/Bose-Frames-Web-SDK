class DeviceStatus {
    constructor(deviceStatusMask) {
        this.rawValue = deviceStatusMask;
    }

    static get pairingEnabled() {
        return new this(1 << 0);
    }
    static get secureBLEPairingRequired() {
        return new this(1 << 1);
    }
    static get alreadyPairedToClient() {
        return new this(1 << 2);
    }
    static get wearableSensorsServiceSuspended() {
        return new this(1 << 3);
    }

    static parse(dataView, offset=0) {
        const deviceStatusMask = dataView.getUint16(offset, false);
        return new this(deviceStatusMask);
    }
}

export default DeviceStatus