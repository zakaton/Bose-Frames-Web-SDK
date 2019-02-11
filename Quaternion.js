import correctionMatrix from "/correctionMatrix.js"

const correctionQuaternion = new THREE.Quaternion();
correctionQuaternion.setFromRotationMatrix(correctionMatrix);

class Quaternion extends THREE.Quaternion {
    get pitch() {
        const {w, x, y, z} = this;

        let sinp = 2 * (w * x + y * z);
        let cosp = 1 - 2 * (x * x + y * y);

        let pitch = Math.atan2(sinp, cosp) + Math.PI;

        return (pitch > Math.PI)?
            pitch - 2 * Math.PI :
            pitch;
    }

    get roll() {
        const {w, x, y, z} = this;

        let sinr = 2 * (w*y - z*x);
        if(Math.abs(sinr) >= 1) {
            return -(Math.sign(sinr) * Math.PI/2);
        }
        else {
            return -Math.asin(sinr);
        }
    }
    
    get yaw() {
        const {w, x, y, z} = this;

        const siny = 2 * (w*z + x*y);
        const cosy = 1 - 2 * (y*y + z*z);

        return -Math.atan2(siny, cosy);
    }

    static parse(dataView, offset = 0) {
        function getComponent(index) {
            return dataView.getInt16(offset + (index*2), false)/Math.pow(2, 14);
        }

        const x = getComponent(0);
        const y = getComponent(1);
        const z = getComponent(2);
        const w = getComponent(3);

        const quaternion = new this(x, y, z, w);
        Quaternion.correctOrientationForTHREEjs(quaternion);
        return quaternion;
    }

    static get byteLength() {
        return 8;
    }

    static correctOrientationForTHREEjs(quaternion) {
        quaternion.multiply(correctionQuaternion);
    }
}

export default Quaternion