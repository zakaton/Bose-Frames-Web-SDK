import GestureType from "/GestureType.js"
import SensorTimestamp from "/SensorTimestamp.js"

class GestureData {
    constructor(gestureType, sensorTimestamp) {
        this.gesture = gestureType;
        this.timestamp = sensorTimestamp
    }

    static parse(dataView, offset = 0) {
        const gesture = GestureType.parse(dataView, offset);
        const timestamp = SensorTimestamp.parse(dataView, offset+1);

        return new this(gesture, timestamp);
    }
}

export default GestureData