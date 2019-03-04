const correctionMatrix = new THREE.Matrix4();

const vectorX = new THREE.Vector3();
const vectorY = new THREE.Vector3();
const vectorZ = new THREE.Vector3();

correctionMatrix.extractBasis(vectorX, vectorY, vectorZ);

const reflectionZ = new THREE.Vector3(1, 1, -1);

vectorX.multiply(reflectionZ);
vectorY.multiply(reflectionZ);
vectorZ.multiply(reflectionZ);

correctionMatrix.makeBasis(vectorX, vectorZ, vectorY);

export default correctionMatrix