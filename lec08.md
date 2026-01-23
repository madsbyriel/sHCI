# ISS Technologies

- Output
    - Head-Mounted Displays (HMDs)
    - Screens & 3D glasses
    - Sound & active Tangibles
- Input
    - Touch & Tangibles
    - Depth Cameras
    - 6 DoF Tracking (6D poses etc)

- Uses HMD for interactive spaces

- Screens / surfaces use LCD/OLED displays, or projections

## Stereoscopic screens

- need a way to get different pictures to left and right eye
    - autostereoscopic: mostly single user
    - works by blocking pixels in line-of-sight of right eye, and showing them to left, and vice versa
    - heavily related to user position, therefore single user

- alternative: shutter or polarizing glasses
    - requires special projector or screen

## Active Tangibles

- tangible objects can also be output devices
- think reactable, use sound light motion

## Sound zones

- have a speaker throwing sound in specific directions
- will not work if cones overlap
- is it an ISS? How is it interactive? no way

## Touch & Tangible Technologies

- resistive
- capacitive
- optical

## Touch - techonology: resistive

- cheap, low-end techonology (no multitouch)
    - two conductive layers seperated by spacers
    - can be used with gloves, pens

- works by pressing down activating a spacer dot?

## Touch - techonology: capacitive

- common in POS (Point of Sale) terminals etc. (no multitouch)
- Robust, simple (but not usable with gloves)
- works by sort of triangulating the finger position by measuring the resistance in the 4 corners of the touch-pad

- projected capacitive - two variants
    - this is a row/column layout looking at resistance in the lines crossing?

    - mutual capacitance: each row/column measured
        - each row/column measured
        - cannot multitouch same row/column?
    - self capacitance: each crossing measured indiv.
        - each crossing measured indiv.
        - can multitouch same row/column?


## Touch - techonology: optical

- frustrated total internal reflection (FTIR)
- bounce IR Led light in acryllic glass tube up and down. On finger touch, will 'frustrate' the beam which is noticable by sensors.

- diffuse illumination (DI)
    - i dont understand this one.
    - seems to be some IR source projecting unto screen, which can sense finger presses on acryllic glass

- grid-based variants
    - much like projected capacitive, this is row column layout.
    - imagine sensors going from up to down and from left to right. If there is interference at on row and column, then you have x & y coordinates for press


- laser rangefinders
    - basically projects the device screen above it. press into the air, and it can relate that press to the device screen geometry. 
    - this requires a large margin of error, the bigger the screen the better

- in-cell sensing - custom LCD screen with light-sensitive pixels
- only one device: samsung SUR40
- pro: can detect hands fingers tokens
- con: sensitive to light

## Tangible technologies: optical

- passive tokens: ReacTIVision, AruCo, ByteTag
- camera-based system required

- (inside out -> mapping the environment i relate it to)
- inside out tracking with active tangibles, needs no camera but special surface pattern

- pen/stylus input
- most touch technologies can detect pens
- simulate fingertip
- special cases
    - apple pencil, wacom pens
        - capacitive or wireless data channel to screen for angle, pressure

        - anoto pens (discontinues), Tiptoi
            - camera in tip, scans invisible pattern on paper

## Depth cameras

- depth cameras
    - regular cameras has color for each pixel, 
    - depth cameras has depth for each pixel, visuallized by a color map ironically

- geometry based depth cameras
- fundamental principles:
    - create two views of a scene
    - match scene points between views
    - determine 2 angles for each scene point
    - trigonometry happens
    - receive distance (makes easy sense, but how to match? Some kinda SLAM algorith?)

- stereo matching
    - two images of scene 
    - stereo matching of corresponding pixels
    - ideally only needed on horizontal scanline

- speckle pattern
    - method 2.1 speckle pattern = random dows
    - random but previously known pattern
    - patches of pattern can be matched -> depth res. lower than image res.

- stripe pattern
    - method 2.2 gray code = alternating stripes
    - encodes binary id for each pixel
    - requires high frame rate or static scene
    - requires IR projector

- time of flight (ToF)
- fundamental principle
    - emit infrared flash
    - measure time until reflected light arrives
    - simple math happens (is it ever simple with light-speeds????)
    - receive distance

    - also other solution (pretty sure i dont understand it right bcuz its just the above but with more data)
        - measure phase difference between two sine waves (IR light)
        - and light sensor

        - light sensor should be equal to IR sine wave, but phase shifted
        - difference in phase shift is ToF, then simple calculation with c and f? should give distance

- depth-color alignment
- most DC also have plain color cam
- problem: how to find color value for each depth pixel? and vice versa
    - requires intrinsic and extrinsic camera parameters?
        - intrinsic: fov, distortion, focal length
        - extrinsic: translation, rotation w.r.t. origin

- point clouds
- each depth pixel -> 3D point
- plus color -> (x, y, z, r, g, b)

## DCs for ISS

- detect only objects, ignore surfaces
- no planar surface necessary

## 6 DoF Tracking

- uses 2 or more cameras, asymmetric targets
- reflectors or LEDs
- intersection of rays from 2 or more cameras lead to 3D points
- unique point distances -> target ID & orientation
