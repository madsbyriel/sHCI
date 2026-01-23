# Case Studies

- tide pod thingy
    - simple button, press and new tide pods will come

- also amazon dash button
- microcontroller with antenna, wifi module, button, microphone, and battery

- chicken and egg problem for setup 
    - configuration via wifi but no wifi to start
- solutions:
    - create a temp local hotspot
    - side-channel configuration
        - iOS uses the microphone as an input device for side-channels
        - meaning they can serve a simple configuration page via ultrasound!

## Tweaks without root access

### Android

- netguard: user level network filter
    - android blocks root level access to network on the phone
    - BUT setting up vpn is user level so
        - can be (ab)used for network filtering
        - use vpn as a simple redirect to remove ads and trackers
- pixoff
    - an app to turn off individual pixels
    - obv. doesn't work for lcd screens
    - various patterns achievable depending on user pref

- use for old phones:
    - kiosk mode
        - u know this one, can run apps in kiosk mode
        - basically just F11, fullscreen to resemble, locks device to 1 app
        - used to create appliances

    - room surveillance
        - use onboard sensors (cam, mic, imu) to watch for intruders
        - app called Haven (open-source)

- Macro/automation tools
    - e.g. MacroDroid (l), Automate (r)
    - Sometimes approaching full-blown development environment
    - Usability issues?
    - Possible to e.g. accidentally lock yourself out of your own device

## Contract Tracing (COVID)

- each phone broadcasts a hash every so often
- nearby phones pick up this signal and keeps a log of which signals they have seen and for how long
- if say alice gets sick, she shares her messages with the hospital
- anyone can now check the hospital registry to see if they have been in contact with alice


## Find my and apple air tags

- owner device and air tag share a few keys, air tag uses a public key to encrypt positional data
- any nearby device 'finder devices' pick up signal and send it to apple servers
- apple servers now have encrypted air tag position. 
- owner device can then download those position reports, and decrypt with private key

- doesn't necessarily have to be public private, but I think its the easiest

- iPhone 11+: Ultra Wide Band (UWB) for last-meter localization
- Android devices: can use NFC to identify AirTag on contact

## Mobile Card Emulation

- emulate a credit card fx, think apple pay or national ID
- hce: less secure, as malware can interfere with payment process
- sem: harder to implement as extra security chip required

- google pay: issues with carrier support (restricted sim card access)

## Computational photography


- take bursts of several images and then combine them into a single image improving clarity
- use minimal shifts between images to improve detail
- e.g. hand tremor, measured with imu
- take advntge. of bayer pattern (shifting of pixels?)
- challenge in moving objects, image sensor noise or unpredictable motion

- artificial bokeh effect (its some quality of the blurred out parts of an image)

- use ai to make image enchancement?
    - any blurry bright circle on black -> must be the moon!
    - hallucinates details
    - probably unwanted?
