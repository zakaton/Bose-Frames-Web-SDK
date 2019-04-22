// popup.html => content.js
function sendMessage(message) {
    message.boseAR = true;
    message.from = "popup.js";

    chrome.tabs.query({active: true, currentWindow: true}, (tabs) => {
        chrome.tabs.sendMessage(tabs[0].id, message);
    });
}

connectButton.addEventListener("click", event => {
    sendMessage({
        case : "connect",
    });
});

// popup.html <= content.js
chrome.runtime.onMessage.addListener((message, sender, sendResponse) => {
    if(message.boseAR && message.from !== "popup.js") {
        switch(message.case) {
            case "connected":
                connectButton.style.display = "none";
                break;
            case "isConnected":
                if(message.isConnected)
                    connectButton.style.display = "none";
                break;
            default:
                break;
        }
    }
});

sendMessage({
    case : "isConnected",
});