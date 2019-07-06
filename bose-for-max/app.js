const maxAPI = require("max-api");

maxAPI.post(`Started "Bose for Max" script`);



maxAPI.post(`Requiring dependencies...`);

const express = require("express");
const app = express();
const http = require("http");
const server = http.createServer(app);
const socket_io = require("socket.io");
const io = socket_io(server);

maxAPI.post(`Successfully required all dependencies!`);



maxAPI.post(`Serving index.html`);

app.use(express.static("public"));

maxAPI.post(`Successfully set up index.html!`);



maxAPI.post(`Setting up Socket.IO...`);

const sockets = [];
io.on("connection", socket => {
    maxAPI.post(`new connection`);

    sockets.push(socket);

    sockets.forEach((_socket, index) => {
        io.to(_socket.id).emit("socket-index", {
            index : index,
        });    
    });
    

    socket.on("disconnect", () => {
        maxAPI.post(`disconnected`);
        maxAPI.outlet("removeDevice", sockets.indexOf(socket));
        delete sockets[sockets.indexOf(socket)];
    });

    // Messages from Client
    socket.on("bose-ar-connect", message => {
        maxAPI.post("bose-ar-connect");
        maxAPI.outlet(sockets.indexOf(socket), "newDevice");
    });
    socket.on("bose-ar-disconnect", message => {
        maxAPI.post("bose-ar-disconnect");
        maxAPI.outlet(sockets.indexOf(socket), "removeDevice");
    });

    socket.on("bose-ar-sensor-input", message => {
        maxAPI.post(`bose-ar-sensor-input, ${message.sensor}, ${message.value}`);

        maxAPI.outlet(sockets.indexOf(socket), "sensorInput", message.sensor, message.value);
    });
    socket.on("bose-ar-gesture-input", message => {
        maxAPI.post(`bose-ar-gesture-input, ${message.gesture}, ${message.value}`);

        maxAPI.outlet(sockets.indexOf(socket), "gestureInput", message.gesture, message.value);
    });

    socket.on("bose-ar-sensor-data", message => {
        maxAPI.post(`bose-ar-sensor-data, ${message.sensor}`);

        const {w, x, y, z, yaw, pitch, roll} = message.value;
        const values = [Number(x), Number(y), Number(z)];


        switch(message.sensor) {
            case "accelerometer":
                break;
            case "gyroscope":
                break;
            case "rotation":
            case "gameRotation":
                values.push(Number(w), Number(yaw), Number(pitch), Number(roll));
                break;
            default:
                break;
        }

        maxAPI.outlet(sockets.indexOf(socket), "sensorData", message.sensor, message.timestamp, ...values);
    });

    socket.on("bose-ar-gesture-data", message => {
        maxAPI.post(`bose-ar-gesture-data, ${message.gesture}`);
        
        maxAPI.outlet(sockets.indexOf(socket), "gestureData", message.gesture, message.timestamp);
    });
});

// Messages from Max
maxAPI.addHandler("enable-sensor", (sensor, rate, socketIndex) => {
    maxAPI.post(`enabling sensor ${sensor} at ${rate}`);

    const socket = sockets[socketIndex];
    
    io.to(socket.id).emit("enable-sensor", {
        sensor : sensor,
        rate : rate,
    });
});

maxAPI.addHandler("disable-sensor", (sensor, rate, socketIndex) => {
    maxAPI.post(`disabling sensor ${sensor}`);

    const socket = sockets[socketIndex];

    io.to(socket.id).emit("disable-sensor", {
        sensor : sensor,
    });
});

maxAPI.addHandler("enable-gesture", (gesture, socketIndex) => {
    maxAPI.post(`enabling gesture ${gesture}`);

    const socket = sockets[socketIndex];

    io.to(socket.id).emit("enable-gesture", {
        gesture : gesture,
    });
});
maxAPI.addHandler("disable-gesture", (gesture, socketIndex) => {
    maxAPI.post(`disabling gesture ${gesture}`);

    const socket = sockets[socketIndex];

    io.to(socket.id).emit("disable-gesture", {
        gesture : gesture,
    });
});

maxAPI.post(`Successfully set up Socket.IO!`);



maxAPI.post(`Setting up server...`);

const port = 3000;
server.listen(port, () => {
    maxAPI.post(`Node server listening on port ${port}!`);
});