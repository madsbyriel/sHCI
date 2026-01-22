# Mixed Reality

## Augmented Reality (AR)

- part of the virtuality continum
- subclass of mixed reality

- it is a spectrum
- Real environment -> Augmented reality -> Augmented virtuality (AV) -> virtual environment

- definition and characteristics
- mix of real-world and virtual visual information
- real & virtual elements spatially aligned in 3D

- requirements
    - visual input (real world) and output (virtual)
    - user input & fast graphics to enable interaction
    - 6D head tracking (for spatial alignment)

- is this AR?
- * picture from slides * 
    - maybe. none of it, of what we know has user input from what we know.
    - visual input, it can definitely see that car to the right highlighted in red
    - 6D head tracking? probably. seems to be a smart windshield? or did it identify the spart windshield as an output device?

## HMD: Optical see-through

HMD is head mounted display

A 3D scene is projected onto some surface close to the eyes of the person, probably glasses.
So partly can see scene, partly can see reality.
- pros
    - direct view of real world
    - eye can focus at different distances
- cons
    - mostly not able to "cover" object, 3D occlusion error
    - lag and alignment is very obvious since you get real-world feedback through eyes all the time

## HMD: video see-through

Instead of letting the user see reality, it is seen through a camera mounted front,
and some video mixing happens between reality and constructed 3D scene

- pros
    - possible to use camera image for tracking -> less lag, better alignment between real and virtual
    - real object can be hidden/substituted
- cons
    - parallax error camera <-> display
    - similar problems to VR displays (motion sickness)
    - single focus distance

    - my own cons:
        - render speed? slow reality down? what happens?
        - real objects can be hidden? requires SAFE environment

## HMD Examples

### Optical seethrough

google glass, meta wayfarer (not ar?)
microsoft hololens
magic leap

### Video see-through

- smartphone goggles (google cardboard, samsung gear VR)
- meta quest 3, lenovo mirage solo
- vr headset + add-on cameras

## HMD issues

- brightness: outdoors is rough
- field of view, human fov is 180, many HMDS are only 20 degrees
- weight/comfort
- lag between
    - real and virtual content
    - head and image movement
- safety
    - what if video see-through fails when crossing street?
    - JUST in general, can you trust what you see???????

## Cardboard & Co. issues

- only single camera on almost all devices
- no 3D view for AR possible, 'flat screen effect'
- mostly no positional tracking, only rotation -> motion sickness is easy
- device capability is unpredictable
- uncomfortable weight distribution
- touchscreen inaccessible

## Heads-up displays (HUDs)

- mostly used in cars or planes
    - really fucking nice! love it
    - not always spatially aligned
    - uses beam combiner (windshield) + 2D display

## Diminished Reality

- instead of adding, then removing real-world content
    - any plausible scenario?
        - ???
        - unwashed dishes?

    - HDR welding mask/goggles removing the welding arc for welders


## Mobile devices as AR displays

- uses window into virtual world metaphor
- usually no 3D display
- primary problem: location / tracking

## AR: tracking & localization

- fundamental requirement for ar is stable and reliable head/view tracking
- multiple approaches
    - gps + imu (inertial measurement unit)
    - vision-based
        - stereo/depth cameras
        - SLAM (Simultaneous Localization and Mapping) algorithms

## Tracking: GPS + IMU

- sensor fusion for 6D pose (geo coordinates)
    - 3D positon gps, 3D orientation IMU
    - low accuracy & position
    - requires additional environment information

- best suited for large-scale apps

- think building viewer app (look at that building, get some info)
- think pokemon go

## Tracking: vision-based

- primary goal: retrieve 6D pose
    - secondary goal: create environment map
    - enables interaction *with* environment

- using specialized hardware:
    - Add-on stereo cameras/depth cameras
    - iPad Pro (tablet with depth cam)

- for arbitrary devices (single RGB cam):
    - Marker-based (fiducial/image)
    - SLAM algorithms
    
## Tracking: vision - stereo/depth

- core idea: each pixel provides color and distance
- stereo camera: 2 cams mounted in parallel
    - replicate part of human depth perception
    - find stereo correspondences between 2 images
    - use camera/lens geometry to calculate distance

- depth cameras: single camera + emitter
    - ToF (Time of Flight) measre travel time of IR flash
    - structured light: shift in projected light pattern

- both methods require specialized hardware

## Tracking: vision - marker based

- core idea: use predefined marker targets (e.g. slips of paper showing placement, and rotation)
    - fiducials: printed black and white patterns
    - image targets: use (flat) real-world objects
- system detects pose relative to target


## Tracking: SIFT & Co.


- SIFT = Scale Invariant Feature Transform
    - detects key points in images
    - describes them independant of size and rotation
    - descriptors can be matches across images
    - calculate geometric transformation

- finds descriptors across multiple images (video) to create a 3D environment map
- descriptors can be anything really, e.g. some key feature of a card, could just be a random dot.

- requires only single camera
- works on almost all devices
- creates stereo correspondences from motion
- (optionally) uses imu to determine motion magnitude

- requires significant processing power
- needs calibration for camera (distortion), imu (alignment to camera)
- includes plane detection
- touchscreen-based interaction

## Spatial AR projection mapping

- projects augmentations directly onto real world
    - mostly static projector/camera setups
    - can be used for buildings, cars, other large objects

    - pico projectors -> mobile use? (i guess small projectors?)
        - brightness and power supply are an issue
        - focus distance also
            - requires accurate object tracking and env maps

- industrial usage, project assembly instructions directly unto workpiece
- needs high brightness & focal depth - lasers required
- workpiece geometry needs to be known in advance

## Interaction with AR

- touch screen, e.g. touch projector e.g. unto hands
- gloves, other equipment, think of copenhagen trip with police boys

## AR applications

- AR: still waiting for 'killer app'
    - adverisements ikea and fashion
    - military, cockpits and weapon sights
    - education, iSkull from other slide
    - gaming: pokemon go
    - medical apps - x-ray vision
