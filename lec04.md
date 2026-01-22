# Ubiquitous Computing & IoT

## Ubiquitous Computing

Mark Weiser proposes three device classes

- Tabs: centimetre scale
- Pads: decimeter scale
- Boards: metre scale

Original vision has already (mostly) arrived

- ubiquitous: present, appearing, or found everywhere
- so computing everywhere
- also {calm | ambient | pervasive} computing implies less/no manual setup effort
- not quite there maybe

## IoT

- idea: put connectivity *everywhere*
- similar to ubicomp:
    - less focus on personal devices
    - more focus on 'smart things' and sensor networks

- automate mundane everyday tasks
- increase energy/resource efficiency
- smarter lgostics in factories (e.g. think of those trash trucks when pubcrawling)

- interaction concepts
    - how can we manage huge networks

- privacy & security
    - even more massive amounts of private data that requires adequate protection

- standards (or lack thereof)

## UbiComp / IoT

- wearables & interaction concepts
    - smart glasses
    - headset
    - smartwatch

    - new interaction concepts, swipe, talk, tap, no-screen
    - problems: battery, size, been there since late 1990's

- sensor & mesh networks
- WPAN (BTLE, NFC)

## smart-watches

- hardware surprisingly powerful
- rough swipes, motion gestures
- notifications and quick responses with watch
- data logging (biometrics)

## sensor & mesh networks

- regular networks: star/tree topology
- central hub for each segment, wired or wireless
- problems for sensors & iot devices
    - low transmission power -> short range
    - would require many hubs gateways
- solution:
    - mesh networks
    - each device also acts as hub/relay
    - topology can change dynamically
- main forwarding strategies
- flooding rebroadcasting
- routing - on-demand e.g. ad hoc on demand distance vector (AODV)
- routing pro-active, e.g. optimized link state routing (OLSR), B.A.T.M.A.N.???

- current implementations
    - zigbee
    - bluetooth
    - freifunk (wifi-based)

- alternatives LPWAN (low power wan)
    - long range (1-10 km)
    - very low bandwidth (< 50kBit/s)
    - also uses ISM bands
- current standards: LoRaWAN, Weightless, WiFi HaLow
- not widely used
- intended for smart meters, street lamps, etc


## WPAN (Bluetooth LE)

- bluetooth:
    - communication with personal peripherals
    - disadvantages:
        - high power draw (on par with WiFi/cellular)
        - complex setup procedures (pairing so on)

- alternative: Bluetooth Low Energy
- little in common w. classic
- same freq band
- smaller stack
- goal: months or years of battery time
- low data rate, 1 MBit/sec, which is not that low

- 2 major roles: central or peripheral
- peripherals can
    - peripheral can cast to all central devices
    - unicast to one specific central device
- centrals can
    - open connections to peripherals
    - be notified of value changes 
- os support (mobile)
    - central role phones now
    
- complexity classes for peripherals:
    - beacons pure static broadcast
        - iBeacon simply broadcasts own UUID
    - additional data possible on request
    - sensors (broad-/unicast with sensor data)
        - multiple profiles: heart rate, activity, temperature
        - notification support to avoid constant polling
    - bidirectional communication
        - not primarily designed for synchronous comm.
        - mostly for setting sensor parameters etc.

- lifetime is highly dependent on activity
    - 1 advertisement per seconds ~ 1 y lifetime... on what battery?

### BTLE profiles

- gap (Generic Advertising Profile)
    - up to 31 bytes advertisement broadcast
    - up to 31 extra bytes on request by central
- gatt (Generic Attribute Profiles)
    - only available to one central at a time
    - 1+ services, containing 1+characteristics each
    - each s/c identified b global 16 bit UUID
    - publish/subscribe model
        - value change notifications, no constant data stream
        - less "on" time for radio module -> power savings

## Near Field Communication (NFC)

- very simple devices, price down to 0.10 pound
- various form factors: sticker, token, card, glass capsule
- contain small IC+ antenna coil
- subclass of rfid (radio freq. id)
- power for tag provided by reader device through magnetic field
- communication through EM field modulation (bi-directional???)

- range is ca 2 cm
- storage 137 byte - 80 kByte
- simple storage devices
- smart cards with crypto functions
- java cards (user-programmable in Java)
- card emulation (device mimics card/token)

- usage scenarios
    - urls, contact data, business card
    - security & access control (AAU student cards)
    - mobile payment
    - passports
    - device to device

- public tags
    - should be write-protected but often are not
    - e.g. overwrite with malicious URL
- security measures
    - simple/low-level
    - can often be brute forced?? 

## UbiComp/IoT: energy supply

- sunlight
- vibration & sound
- temp differential
- em radiation
- drawbacks
    - low efficiency
    - energy storage (during night e.g.)

## UbiComp/IoT: privacy

- bluetooth le devices: often broadcast-based
    - implies public availability -> tracking
    - often leaks additional private data, e.g. pulse
- classic tradeoff: security / ease of setup
- danger of stalking (apple airtags and other trackers)

## UbiComp/IoT: security

- mobile phones: bad situation regarding patches
- IoT devices: even worse
- customer often wont even notice, so why bother
- problem: insecure devices on internet can be used as part of botnet

## UbiComp/IoT: standards

- there is a standard per company, nothing will talk together, no two light bulbs are made the same (for some reason)


