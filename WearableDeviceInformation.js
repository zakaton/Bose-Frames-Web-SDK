import SensorType from "/SensorType.js"
import GestureType from "/GestureType.js"
import DeviceStatus from "/DeviceStatus.js"

class WearableDeviceInformation {
    constructor(majorVersion, minorVersion, productID, variant, availableSensors, availableGestures, transmissionPeriod, maximumPayloadPerTransmissionPeriod, maximumActiveSensors, deviceStatus) {
        this.majorVersion = majorVersion;
        this.minorVersion = minorVersion;
        this.productID = productID;
        this.variant = variant;
        this.availableSensors = availableSensors;
        this.availableGestures = availableGestures;
        this.transmissionPeriod = transmissionPeriod;
        this.maximumPayloadPerTransmissionPeriod = maximumPayloadPerTransmissionPeriod;
        this.maximumActiveSensors = maximumActiveSensors;
        this.deviceStatus = deviceStatus;
    }

    static parse(dataView, offset = 0) {
        let majorVersion = dataView.getUint8(offset);
        let minorVersion = dataView.getUint8(offset+1);
        let productID = dataView.getUint16(offset+2, false);
        let variant = dataView.getUint8(offset+4);
        
        let availableSensorsBitmask = dataView.getUint32(offset+5, false);
        let availableSensors = SensorType.set(availableSensorsBitmask);
        
        let availableGesturesBitmask = dataView.getUint32(offset+9, false);
        let availableGestures = GestureType.set(availableGesturesBitmask);

        let transmissionPeriod = dataView.getUint8(offset+16);
        let maximumPayloadPerTransmissionPeriod = dataView.getUint16(offset+14, false);
        let maximumActiveSensors = dataView.getUint8(offset+16);
        let deviceStatus = DeviceStatus.parse(dataView, offset+17);

        return new this(majorVersion, minorVersion, productID, variant, availableSensors, availableGestures, transmissionPeriod, maximumPayloadPerTransmissionPeriod, maximumActiveSensors, deviceStatus);
    }
}

export default WearableDeviceInformation