# Mobile Information Systems

## Big issues

- Limited power supply
- Limited storage
- Wireless communication channels
- Limited/different I/O capabilities
- Unpredictable usage context
- Privacy & Security
- Sustainability

### Limited power supply

Increase battery size or use more efficiently.

Biggest energy consumers:
- Backlight
- GPS
- Wireless modules (WiFi, Bluetooth)
- Sensors (touchscreen, accelerometer)

Solutions:
- Disable when unused
- Lower polling frequency
- Maybe move some things to cloud?

### Limited storage

Bigger storage means a bigger phone.

Maybe fix by outsourcing to cloud, but then that is more energy consumption.

### Wireless

- Unpredictable throughput
- Bandwidth <-> energy consumption tradeoff
- media size outgrowing bandwidth
- Abrupt quality of service changes
- RTT may be too high

#### Summary

- Many physical issues (refraction, absorption, antenna geometry, power limits)
- Spectrum is highly contested
    - Many sources of interference
    - Limited bandwidth available
- Complex interleaved HW/SW stack

#### Signal theory

Electromagnetic waves, frequency 0.5 - 5 GHz
Capacity/throughput depends on:
- Channel bandwidth
    - Given in MHz (e.g. 60 MHz for common UMTS bands)
    - Limited by hardware/cost as well as regulations

Take one band on the MHz spectrum, say it is 60 MHz, from 1900 to 1960 MHz, then this band can be divided into N bands
one from 1900 to 1910, 1910 to 1920, and so on, giving 6 channels. 1905 is the middle, and is the center frequency for a channel.

Multiple simultaneus transmission on same frequency cause interference. So channels are further divided by either time-slotting or using sub-channels if possible.

Signal to Noise Ratio at receiver is a measure of signal quality.

Antennas are directional, omnidirectional can be simulated by multiple antennas and correct antenna selection can improve SNR (duh)

#### Negative effects

- Refraction: varying densities of the transmission media disrupt/redirect EM waves
- Reflection: Material smooth in the same size range as the EM wavelength (microwave doors!)
- Absorption: Matter between sender and receiver
- Diffraction: EM waves bend around small objects
- Interference: multiple transmitters on the same frequency band
- Multipath scattering: multiple transmission paths between sender and receiver

#### Classification

- WLAN: replacement for LAN, up to 800Mbit/s in theory, 20-50 m indoor range
- WPAN: Wireless personal area networks, short range comms between peripherals, 2-10 m range, 3 Mbit/s, bluetooth family
- WiGig: WLAN in 60 GHz band -> very high data rate, but needs line of sight, low range
- Cellular networks (WWAN): terrain-based - 2G, 3G, 4G, 5G, satelite based asymmetric bandwidth allocation (mostly downstream)
- Mesh networks: No central access point, p2p network, used for low power sensors, can be based on wlan, bluetooth, zigbee

### I/O

Different I/O capabilities:
- Small screens, often no physical keyboard, fat finger problem of precision
- Less room for data display
- Use other channels
    - input: touch, gestures, motion, camera, location
    - output: vibration, sound, speech, notification
- tradeoff: size/weight

#### Touch

- no haptic feedback (textile feedback)
- occlusion
    - hand covers the important area/display
    - choose screen layout in advance
- precision

- no 'hover' state
    - every touch is an action

#### Gestures

- discoverability
    - even harder for complex gestures
- natural interaction
    - whats natural
    - culture specific
- no standards
    - eg. tap-and-hold, swipe, double tap, drag
    - except: pinch-zoop

#### Speech

- speech input
    - mostly used for hands-free dialing
    - siri, cortana, google: more complex speech recognition offloaded to cloud
    - not widely used
- speech output
    - not widely used besides cars
- cultural differences

#### Motion as output

- mostly vibrations
- motion as input
    - accelerometer
    - can only sense relative position
    - needs combination with gps, marker tracking
    - sensitive to interference

#### Vision

- vision as input (camera)
    - barcodes, qr, text recognition, 3d structure reconstruction (SLAM)
    - comp vision deals with wildly different lighting conditions
- vision as output (displays)
    - size/resolution: very high info density, suitable info visualization required
    - readability in sunlight?
- combination: augmented reality

### Usage context

- unpredictable usage context
    - environment
    - location/position
    - social context
    - activity context
    - context recognition

#### Environment

- motion: in a bus or walking, who moving who?
- sound: noisy/quiet, should remain quiet?
- light:
    - bright/dark? remain dark (at the movies)?

#### Geometric context

- geographic context
    - moves with the user
    - absolute location 
    - use gps/compass

- user/device context
    - moves relative to user
    - relative locations orientation
    - often more difficult to determine

#### Social context

- expected user base e.g. techies, grannies, normies
- acceptable behaviour, loud talk, taking pictures
- privacy
    - shoulder surfers peeping passwords
    - temporary shoring with other persons, maps

#### Activities context

- physical, walking, standing, sitting
- available attention span
- virtual activities, looking at maps, SoMe
- seamless context switching, continuing activity on desktop for example


#### Recognition context

- automatic meeting detection
    - send calls to voicemail, e.g. busy
- what if it fails
    - false positive, missing important call
    - false negative, phone plays loudly in meeting
- must be accurate to earn user trust


## Privacy & Security

- Huge amounts of private & personal data on devices
    - contacts
    - history
    - pin
- many people want that data
    - google, facebook, microsoft
    - nsa, gchq, bnd, (policing criminals)
    - hackers
- no pervasive encryption
    - government snoopers, key escrow fx of WhatsApp
    - lost/found phones trivial to access
- voluntary use of cloud solutions
    - requires trusting them

## Sustainability

- fundamental feature set hasnt changed since 2015
- mostly due to lack of software updates (on android)
- 85 kg of co2 equivalents per phone
- similar to a flight berlin -> paris
- phone markets slowing down
- alternatives
    - eu right to repair laws

