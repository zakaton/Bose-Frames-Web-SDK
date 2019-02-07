class SamplePeriod {
    constructor(id) {
        this.rawValue = id;
        this.milliseconds = SamplePeriod.all[id];
    }

    static get all() {
        return [
            320,
            160,
            80,
            40,
            20,
        ];
    }

    get mask() {
        return 1 << this.rawValue;
    }

    static set(mask) {
        return this.all.filter((name, rawValue) => (1 << rawValue) & mask);
    }

    static from(milliseconds) {
        return (this.all.includes(milliseconds))?
            new this(this.all.indexOf(milliseconds)) :
            null;
    }
}

export default SamplePeriod