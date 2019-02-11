import BoseFrames from "/BoseFrames.js";
const boseFrames = new BoseFrames();

boseFrames.addEventListener("sensorData", sensorData => {
    const sensorValues = sensorData.values;
    sensorValues.forEach(sensorValue => {
        const {sample, sensor, timestamp} = sensorValue;
        const {value, bias, accuracy} = sample;

        switch(sensorValue.sensor.name) {
            case "accelerometer":
                accelerometerX.value = value.x.toFixed(3);
                accelerometerY.value = value.y.toFixed(3);
                accelerometerZ.value = value.z.toFixed(3);

                accelerometerTimestamp.value = timestamp.timestamp;
                accelerometerAccuracy.value = accuracy.rawValue;
                break;

            case "gyroscope":
                gyroscopeX.value = value.x.toFixed(3);
                gyroscopeY.value = value.y.toFixed(3);
                gyroscopeZ.value = value.z.toFixed(3);

                gyroscopeTimestamp.value = timestamp.timestamp;
                gyroscopeAccuracy.value = accuracy.rawValue;
                break;

            case "rotation":
                rotationX.value = value.x.toFixed(3);
                rotationY.value = value.y.toFixed(3);
                rotationZ.value = value.z.toFixed(3);
                
                rotationW.value = value.w.toFixed(3);

                rotationPitch.value = value.pitch.toFixed(3);
                rotationRoll.value = value.roll.toFixed(3);
                rotationYaw.value = value.yaw.toFixed(3);

                rotationTimestamp.value = timestamp.timestamp;
                //rotationAccuracy.value = accuracy.estimatedAccuracy;
                break;

            case "gameRotation":
                gameRotationX.value = value.x.toFixed(3);
                gameRotationY.value = value.y.toFixed(3);
                gameRotationZ.value = value.z.toFixed(3);
                
                gameRotationW.value = value.w.toFixed(3);

                gameRotationPitch.value = value.pitch.toFixed(3);
                gameRotationRoll.value = value.roll.toFixed(3);
                gameRotationYaw.value = value.yaw.toFixed(3);

                gameRotationTimestamp.value = timestamp.timestamp;
                break;

            default:
                break;
        }
    })
});
boseFrames.addEventListener("gestureData", gestureData => {
    const eventString =
        "Gesture Type: " + gestureData.gesture.name +
        "\nTimestamp: " + gestureData.timestamp.timestamp + '\n\n';
    doubleTapNotifications.innerText += eventString;
})

connectButton.onclick = () => {
    boseFrames.connect()
        .then(boseFrames => {
            connectButton.style.display = "none";
            dataContainer.style.display = '';
            window.boseFrames = boseFrames;
        })
}