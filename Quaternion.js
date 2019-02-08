// Create a Quaternion Singleton to correct the annoying Bose Frames Z-Down Orientation:

const matrix = new THREE.Matrix4();

const vectorX = new THREE.Vector3();
const vectorY = new THREE.Vector3();
const vectorZ = new THREE.Vector3();

matrix.extractBasis(vectorX, vectorY, vectorZ);

const reflectionZ = new THREE.Vector3(1, 1, -1);

vectorX.multiply(reflectionZ);
vectorY.multiply(reflectionZ);
vectorZ.multiply(reflectionZ);

matrix.makeBasis(vectorX, vectorZ, vectorY);

const _quaternion = new THREE.Quaternion();
_quaternion.setFromRotationMatrix(matrix);

///////////////////////////////////////////////

class Quaternion extends THREE.Quaternion {
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
        quaternion.multiply(_quaternion);
    }
}

export default Quaternion