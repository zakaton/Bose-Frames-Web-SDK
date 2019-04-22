function sendMessage(message) {
    message.boseAR = true;
    message.from = "injection.js";

    window.postMessage(message);
}

// content.js => injection.js
window.addEventListener("message", event => {
    if(event.data.boseAR && event.data.from !== "injection.js") {
        switch(event.data.case) {
            case "connect":
                window.boseARDeviceElement.addEventListener("connect", event => {
                    window.postMessage({
                        boseAR : true,
                        from : "injection.js",
                        case : "connected",
                    });
                });
                window.boseARDeviceElement.connect();                
                break;
            case "isConnected":
                window.postMessage({
                    boseAR : true,
                    from : "injection.js",
                    case : "isConnected",
                    isConnected : window.boseARDeviceElement.boseARDevice.isConnected,
                });
                break;
            default:
                break;
        }
    }
});

if(window.boseARDeviceElement == undefined) {
    window.boseARDeviceElement = document.createElement("bose-ar-device");
    window.boseARDeviceElement.style.display = "none";
    document.body.appendChild(window.boseARDeviceElement);
}