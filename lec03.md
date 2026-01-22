# I/O on mobile devices (1/2)

## Touch

- tactile issues
    - some try fix with small overlay on phone
    - some small EM charges on touch (only single touch)

- one-handed use reachability problem
    - think iphone double tap home button, lowers screen




## Occlusion

- create model of user hand and adjust e.g. popups or other geometry
- use buttons / screen on back of device
- enables very small screens

## Precision

- perceived input point model
    - different perception of touched point for different users
    - high resolution sensor to detect touch angle, and fingerprints, improve accuracy
        - (precision vs accuracy)

- offset cursor
    - offset the cursor, think android selection handles that dont block selected text
    - or for fingers when operating pen-based interfaces using touch

- there's a map of where users touch most frequently,
    - use that intelligently place buttons and so on.

- word prediction (WP) helps
    - theres also the variant of swiping your finger across multiple letters to form words

- mobile phones use a standard
- many screens CAN detect hover, or hover-sensing

## Motion input output

- motion - input -> accelerometer
    - waving, dropping, sudden changes, DO YOU MEAN TO UNDO?

- motion - output -> vibration
    - very rarely shape change or
    - moving the user?

- IMU sensor inertial measurement unit
    - accelerometer
    - magnetometer
    - gyroscope
    - can also be used for position relative to some other point

- high power consumption for all 3 sensors
    - only accelerometer per default

- MEMS (Micro ElectroMechanical Systems)
    - Microscopic springs, weights, actuators etc. etched on silicon wafer

- add-on controllers
    - Many flavours, usually with buttons, touchpad, IMU, BTLE
    - some designed like Dr. Strange sling ring!

- muscle sensing
    - Myo: EMG (electromyography) device
    - can very much be used for prosthetic arm movement!
    - very cool

- free-air gestures
    - example of a man with camera on cap doing gestures
    - would probably work with a sling ring as well

- paperphone: bending gestures (earmarking, flipping pages (thats also in touch!))

- bumping devices together
    - this is almost exactly as when transferring some stuff between iphones.
    - uses a VERY low range transmitter to transfer data
        - maybe also could just use signal strength and TDOA (or RTT) as indicator

- vibrating shoes? my god
    - left vibrate, turn left, right vibrate turn right
    - extrapolate to other accessories

- the user itself?
    - low current stimulation of inner ear affecting balance
        - could be used as a counter to motion sickness
    - stimulating muscle movement
        - electrode attachment & safety?

- 'breathing phone' changes shape thickness, center of gravity to convey info
    - this one is hopeless


## Visual input output

### Output

- lcd (liquid crystal display)
    - usually has own backlight across whole screen
    - monochromatic (uses color filters)
    - backlighting

- oled
    - only generate absolutely necessary light 
    - individually activated pixels

- e-ink displays
    - only particles on top visible, use electric fields to move white and black particles
    - no energy needed to keep images (bi-stable)
    - high contrast, sunlight readable
    - way too slow for video, think Remarkable 2

### Input

- cameras
    - more a hardware (sensor) requirement than anything

- barcodes
    - EAN product codes (linear, little data, approx. 15 chars)
    - relatively simple CV problem

- OCR (optical character recognition)
    - can be used to scan/index documents, just scanning doesn't require ocr
    - translatre foreign languages

- SLAM (Simultaneous Location And Mapping)
    - creates 3D environment on the fly
    - inside-out device moves within environment -> map the stuff
        - ROOOOOMBAAAS
        - drones in general
    - outside-in device moves around object to scan it -> 3D scanning 
        - unreal engine objects!

- object detection
    - usually a convolutional neural network (CNN)
    - requires training/learning/testing
    - if to run locally, requires a lite version for mobile
    - maybe cloud-driven, security concerns?

- touch projector
    - all-in-one approach
    - touches on smaller device are projected to bigger screen
    - (screen duplication for mobile????)


### Other channels

- bio sensors
    - biometrics
    - privacy?

- hand/body stance
    - recognizes hand gestures?

- grasp
    - alt. to full body stance: grasp shape
        - can use on-device sensing (capacitive/optical)
        - enables conclusions about many facets of context

- facial expressions
    - active area in CV research
    - still unreliable for multiple different persons

- eye gaze tracking
    - pointing device
    - concentration level, pupil dilation, involuntary eye movements

- heart rate/ECG
    - even possible with smart phone cameras
    - built in to smart watches
