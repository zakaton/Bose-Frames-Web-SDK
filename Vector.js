class Vector extends THREE.Vector3 {
    static get byteLength() {
        return 6;
    }

    static parse(dataView, offset = 0) {
        function getComponent(index) {
            return dataView.getInt16(offset + (index*2), false)/Math.pow(2, 12);
        }

        const x = getComponent(0);
        const y = getComponent(1);
        const z = getComponent(2);

        return new this(x, y, z);
    }
}

export default Vector