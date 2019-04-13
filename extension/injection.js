window.addEventListener("message", event => {
    if(event.data.frames) {
        switch(event.data.message) {
            case "connect":
                boseFrames.connect()
                    .then(() => {
                        // YOUR CUSTOM CODE
                    })
                break;
            default:
                break;
        }
    }
});