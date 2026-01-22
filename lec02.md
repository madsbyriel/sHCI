# Location & Networks

## Multiplexing

Radio-frequency is a heavily contested space therefore we need ways to share or multiplex those channels.

- time-division multiple access (TDMA)
    - static timeslots
        - one single transmitter active per slot
        - requires clock synchronization in advance
    - dynamic: carrier-sense multiple access/collision avoidance (CSMA/CA)
        - listen if channel idle, then transmit (carrier-sense)
        - optional: request to send/clear to send
        - transmit and wait for acknowledgement

- frequency division multiple access (FDMA)
    - simplest case: one frequency slot per transmission
    - receiver must be able to cover multiple slots
    - complex variant: OFDMA orthogonal frequency division multiple access
        - transmission of orthogonal sub-channels

- WDMA: wavelength divison multiple access -> different light colors in optical transmission
- code-division multiple access (CDMA)
    - spread-spectrum method: uses wider spectrum than required for actual signal bandwidth

    - multiple different modulation codes -> allow speration of signals on same carrier
        - frequency-hopping spread spectrum (FHSS) -> code is pseudo random sub-channel sequence
        - direct sequence spread spectrum (DSSS) -> code is high-rate pseudo random bit sequence

if we combine FDMA and TDMA we can have two dimensions to multiplex, imagine y axis is frequency and x is time, then we can put in communications into boxes, a frequency range and a time range in which comms occur.

CDMA works by sending a code to a user (some protocol) and then the user will change their signal using this code, spreading it across the frequency band. Will not go too much into it, but it allows multiplexing.

We can combine FDMA, TDMA and CDMA! Omega multiplexing!

## Standards: Bluetooth

- wireless personal area network (WPAN)
- very complex, 3256 pages in docs
- air interference
    - 2.4 GHz ISM band, up to 3Mbit/s data rate
    - 80 channels of a MHz (or 40 * 2 MHz)
    - Adaptive frequency hopping AFH also known as FHSS (ss = spread spectrum)
- we have classic Bluetooth
- and Bluetooth low energy
    - used by sensors, wearables, mesh support since v5.0
- devices can support one or both

## Standards: WIFI

- WAN
- also in 2.4 and 5 GHz ISM band
    - interference with bluetooth
    - minimized with bt/wifi integrated transceivers
    - wifi can be used as high-speed data link layer for bluetooth connections
- data rates up to 10 Gbit/s in theory, more like 1Gbit/s
- only 2 lowest iso/osi layers
    - physical layer: modulation & channel access
        - FHSS, DSSS or OFDMA
    - data link layer: management, e.g.
        - announcement of ssid (service set id = network name)
        - roaming between access points
        - encryption/authentication
- many well-separated sub-standards -> easier to implement than bluetooth
- network topology: usually start or tree
    - central access points, uplink via wired network
    - roaming possible between access points in same network
- alternative wifi direct (or wifi p2p)
    - local point-to-point without AP
    - support mutliple devices (> 2)
    - often buggy, not well supported

## Standards: 3G

- Current de-facto WWAN standard
- slowly being replaced by LTE
- complex hybrid between:
    - circuit switched (old telephone network)
    - packet switched (ip-based network)
- most functionality hidden from user
    - seperate firmware/OS, processor, memory

I wont note much on 3G, the phone connects with base station radio cell (an antenna) and then a lot of complicated systems activate.

## Standards: 4G

- current de-facto WWAN standard
- some aspects less complex than UMTS (3G)
    - only packet-switched ip data
    - also used for voice communication over IP
- most functionality hidden from user

phone contacts radio cell, it goes through some gateways, ending up at either a VoIP server (voice over ip?) and both end up at the 'Internet' cloud thing in the graph

## Standards: 5G

- next WWAN standard
- similar to 4G in many aspects, just faster
    - only packet-switched ip data
    - also VoIP
- includes sub-standards for other scenarios:
    - campus networks, alternative to WiFi
    - low-bandwidth long range mode for IoT
    - microcells for home and office
    - car-to-car comms for the future
- 5G is nudging into wifi space


## Location

- Geographic latitude and longitude
    - given in degrees hours minutes seconds (outdated)
    - fraction of degrees (N 50.972..., W 11.326...)
- Topological, street address, country, address no.
- cell-based, id of network cell

### Mapping between classes

- topological -> geographic: "geocoding"
    - e.g. map view, finding coordinates for street address
- geographical -> topological: "reverse geocoding"
    - looking up address of current location
    - spatial index
- cell id -> geographical/topological
    - needs db containing coordinates/addresses of APs and cell towers

### Methods

| method | pro | con |
| - | - | - |
| satellites | very accurate +-1m | works only outside, high power |
| wlan cells | low power draw | less accurate |
| cell towers | no additional power | inaccurate 100m-1km |

### Terminology

precision: how much does your predictions vary?
accuracy: how much are your predictions off by?

you can have high precision but totally off your mark.
harder to have high accuracy and low precision (reproduction error)

### GPS satellite based

- most modern devices support all systems
- based on signal time of flight
- works by intersecting resulting circles (or spheres)
- by triangulation, more satellites would be best. 2 is not good.
- usually 8-9 satellites for any given point
- uses TDOA time difference of arrival, so no precision clock in receiver needed

- differential gps
    - add one or more stationary receivers
    - use known position offset to improve accuracy of moving receivers

- china uses multiple sine waves for some offset for security reasons and therefore some mismatch occurs between satellite images and street data because street data uses GCJ (chine standard)

- pros: accurate, (mostly) independant of weather
- cons: military control, line of sight, cold start, expensive

### Cell based

You understand this perfectly fine already.
It is not often used between cell towers, because I think usually you only have a two towers available, and they are directional, so you can be within a cone of both the towers. I guess signal strength isn't something that can be considered accurate enough here to determine location.
However google uses this and 99% of queries are answered doing this.
It is cheaper, but raises privacy concerns. Not available offline (google owns this shit and you can't host it).
WLAN can change and move so requires updating.









