import Matrix from "/Matrix.js"

class Quaternion {
    constructor(x, y, z, w) {
        this.x = x;
        this.y = y;
        this.z = z;
        this.w = w;
    }

    static parse(dataView, offset = 0) {
        function getComponent(index) {
            return dataView.getInt16(offset + (index*2), false)/Math.pow(2, 14);
        }

        const x = getComponent(0);
        const y = getComponent(1);
        const z = getComponent(2);
        const w = getComponent(3);

        return new this(x, y, z, w);
    }

    static get byteLength() {
        return 8;
    }

    get pitch() {
        const sinp = 2 * ((this.w * this.x) + (this.y * this.z));
        const cosp = 1 - 2 * (Math.pow(this.x, 2) + Math.pow(this.y, 2));

        const pitch = Math.atan2(sinp, cosp) + Math.PI;

        return (pitch > Math.PI)?
            (pitch - (2 * Math.PI)) :
            pitch;
    }
    get roll() {
        const sinr = 2 * ((this.w * this.y) - (this.z * this.x));

        if(Math.abs(sinr) >= 1) {
            const sign = (sinr > 0)? -1:1;
            return sign * Math.abs(Math.PI/2);
        }
        else {
            return -Math.asin(sinr);
        }
    }
    get yaw() {
        const siny = 2 * (this.w * this.z + this.x * this.y);
        const cosy = 1 - 2 * (Math.pow(this.y, 2) + Math.pow(this.z, 2));

        return -Math.atan2(siny, cosy);
    }

    get rotationMatrix() {
        return Matrix.from(this);
    }
}

export default Quaternion