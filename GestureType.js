class GestureType {
    constructor(gestureId) {
        this.rawValue = gestureId;
        this.name = GestureType.all[gestureId-128];
    }

    static get all() {
        return [
            "singleTap",
            "doubleTap",
            "headNod",
            "headShake",
        ]
    }

    get mask() {
        return 1 << this.rawValue;
    }

    static set(mask) {
        return this.all.filter((name, rawValue) => (1 << rawValue) & mask);
    }

    static parse(dataView, offset = 0) {
        const id = dataView.getUint8(dataView);
        return new this(id);
    }

    static from(gestureName) {
        const gestureId = 128 + this.all.indexOf(gestureName);
        return new this(gestureId);
    }
}

export default GestureType