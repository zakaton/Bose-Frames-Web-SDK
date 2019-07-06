# 🎛️ Bose for Max (Work in Progress)
*Prefer [Cycling '74's](https://cycling74.com/) [Max](https://cycling74.com/products/max)? Now you can use as many [Bose AR](https://www.bose.com/en_us/better_with_bose/augmented_reality.html) devices as you want in a Max Patch using [Node for Max](https://cycling74.com/products/max-features#node-for-max) via [WebSockets](https://socket.io/)!*  
1. Download the [`bose-for-max`](https://github.com/zakaton/Bose-Frames-Web-SDK/tree/master/bose-for-max) folder
2. Open `bose-for-max.maxpat` in [Max](https://cycling74.com/products/max) *([Max 8](https://cycling74.com/products/max-features) is required for [Node for Max](https://cycling74.com/products/max-features#node-for-max).*
3. Go to `localhost:3000` to connect your BoseAR device via the WebSDK (the top of the webpage will display the socket connection index to distinguish multiple devices in the Patch)
4. Once connected, you can enable/disable sensors/gestures either in the Patch or the webpage
5. For multiple devices, copy-and-paste the BoseAR device region under `Bose AR Device #`, and change the # to indicate other devices via their socket connection index (shown at the top of the web page)
