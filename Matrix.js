import Vector from "/Vector.js"

class Matrix {
    constructor(X, Y, Z) {
        this.X = X;
        this.Y = Y;
        this.Z = Z;
    }

    static from(quaternion) {
        const {x, y, z, w} = quaternion;
        const X = new Vector(
            (w*w) + (x*x) - (y*y) - (z*z),
            (2*x*y) - (2*w*z),
            (2*x*z) + (2*w*y)
        );
        const Y = new Vector(
            (2*x*y) + (2*w*z),
            (w*w) - (x*x) + (y*y) - (z*z),
            (2*y*z) - (2*w*x)
        );
        const Z = new Vector(
            (2*x*z) - (2*w*y),
            (2*y*z) + (2*w*x),
            (w*w) - (x*x) - (y*y) + (z*z)
        );

        return new this(X, Y, Z);
    }

    get webOrientation() {
        const X = new Vector(this.X.x, -this.X.z, this.X.y);
        const Y = new Vector(this.Y.x, -this.Y.z, this.Y.y);
        const Z = new Vector(this.Z.x, -this.Z.z, this.Z.y);
        return new Matrix(X, Z, Y);
    }
}

export default Matrix