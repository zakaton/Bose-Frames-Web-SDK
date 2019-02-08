class Quaternion extends THREE.Quaternion {
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
}

export default Quaternion