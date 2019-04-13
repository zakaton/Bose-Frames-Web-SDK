// from popup.js
chrome.runtime.onMessage.addListener((request, sender, response) => {
    if(request.frames)
        window.postMessage(request);
})

// from injection.js
window.addEventListener("message", (event) => {
    if(event.data.frames)
        chrome.runtime.sendMessage(event);
})

const injectionScript = document.createElement('script');
    injectionScript.type = "text/javascript";
    injectionScript.src = chrome.extension.getURL("/injection.js");
document.body.appendChild(injectionScript);

const boseFramesInjectionScript = document.createElement('script');
    boseFramesInjectionScript.type = "text/javascript";
    boseFramesInjectionScript.src = chrome.extension.getURL("/BoseFrames.js");
document.body.appendChild(boseFramesInjectionScript);

console.log("Frames Content Loaded")