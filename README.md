# Hyperledger Fabric 2.3 for ARM64 (raspberry pi)

This repo contains binaries built for ARM64 architecture and for AMD64.
It includes config files to run a HLF network on 3 raspberry pis and a laptop.
It includes yaml files for use with docker stack deploy to spin up the network.
It include a order of commands file to follow when setting up this network.


## Hardware
This has been run on a Raspberry Pi 4, with 4 or 8 gb of ram and a 16 or 32 gb SD card.

## Operating System
This uses 64bit Raspbian, follow the link to get the ISO and instructions for installing it on an SD Card.

https://www.raspberrypi.org/forums/viewtopic.php?t=275370

It may work on another 64bit OS, like Linux Server or Mate, but has not been tested.

## Installation

Clone this repository, will include binaries inside bin.

Run the pull-hlf-arm-images.sh on your pis's, this will pull necesary images from dockerhub.
Run the pull-linux-images.sh on your laptop, this will pull necesary images from dockerhub.


## Setting Up Go Path
- Add gopath
```export GOPATH=$HOME/go```

- Add hyperledger source to go path

``` mkdir -p $GOPATH/src/github.com/hyperledger```
 - Clone fabric 2.3
 ```git clone -b release-2.3 https://github.com/hyperledger/fabric.git```

## How to build these images

The images were built using dockers Buildx which allows for images to be built on multiple operating systems, the following explains how to use this:
https://github.com/hyperledger/fabric/pull/1086

These changes were applied on cloned 2.3 repo and built in a linux VM then pushed to dockerhub and then pulled into the raspberry pi.

## How to build Binaries

Binaries were built by cloning the hyperledger fabric 2.3 release repo and running:

```make native```

## Customising to Your Own Setup

TODO
