import BoseFrames from "/BoseFrames.js"

const boseFrames = new BoseFrames();

const audioContext = new AudioContext();
const resonanceAudioScene = new ResonanceAudio(audioContext);
resonanceAudioScene.output.connect(audioContext.destination);

const roomDimensions = {
    width : 3.1,
    height : 2.5,
    depth : 3.4,
};

let roomMaterials = {
    // Room wall materials
    left: 'brick-bare',
    right: 'curtain-heavy',
    front: 'marble',
    back: 'glass-thin',
    // Room floor
    down: 'grass',
    // Room ceiling
    up: 'transparent',
};

resonanceAudioScene.setRoomProperties(roomDimensions, roomMaterials);

const audioElement = document.createElement("audio");
audioElement.src = "music.mp3";

const audioElementSource = audioContext.createMediaElementSource(audioElement);
const source = resonanceAudioScene.createSource();
audioElementSource.connect(source.input);

window.resonanceAudioScene = resonanceAudioScene;

source.setPosition(1, 1, 0);

window.source = source;

window.start = () => {
    boseFrames.connect()
        .then(boseFrames => {
            boseFrames.enableSensor("rotation", 20);
            boseFrames.addEventListener("sensorData", sensorData => {
                const value = sensorData.values[0].sample.value;
                const matrix = value.rotationMatrix;
                const webMatrix = matrix.webOrientation;
                
                resonanceAudioScene.setListenerOrientation(webMatrix.X.x, webMatrix.X.y, webMatrix.X.z, webMatrix.Y.x, webMatrix.Y.y, webMatrix.Y.z);
            })
        })
    audioElement.play();
}

const leapMotionController = new Leap.Controller();
leapMotionController.connect();
leapMotionController.on("frame", frame => {
    const rightHand = frame.hands.find(hand => hand.type == "right");
    const leftHand = frame.hands.find(hand => hand.type == "left");

    function clamp(value, min, max) {
        return (value < min)?
            min :
            ((value > max)? max : value);
    }
    function normalize(value, min, max) {
        const clampedValue = clamp(...arguments);
        return (clampedValue-min)/(max-min);
    }
    
    if(rightHand !== undefined) {
        const x = 10*normalize(rightHand.palmPosition[0], -200, 200) -5;
        const y = 10*normalize(rightHand.palmPosition[1], 100, 400);
        const z = 10*normalize(rightHand.palmPosition[2], -200, 200) -5;
        source.setPosition(x, y, z);
    }

    if(false && leftHand !== undefined) {
        const x = 100*normalize(leftHand.palmPosition[0], -200, 200) - 50;
        const y = 100*normalize(leftHand.palmPosition[1], 100, 400) - 50;
        const z = -100*normalize(-leftHand.palmPosition[2], -200, 200) - 50;
    }
})

window.audioElement = audioElement;