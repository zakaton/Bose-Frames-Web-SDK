/*
    TODO
        add a connect button
        trigger a "connect" message to content, which is forwarded to injecton...
*/

const connectButton = document.createElement('button');
    connectButton.innerText = "Connect";
    connectButton.addEventListener("click", event => {
        chrome.tabs.query({currentWindow: true, active: true}, function (tabs){
            const activeTab = tabs[0];
            chrome.tabs.sendMessage(activeTab.id, {frames:true, message:"connect"});
        });
    })
document.body.appendChild(connectButton);

console.log("Frames Popup Loaded");