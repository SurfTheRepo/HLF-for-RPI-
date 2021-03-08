# Hyperledger Fabric 2.3 for ARM64 (raspberry pi)

This repo contains the fabric samples with binaries built for ARM64 architecture that is able to run on a Raspberry Pi.


## Hardware
This has been run on a Raspberry Pi 4, with 8gb of ram and a 32gb SD card.

## Operating System
This uses 64bit Raspbian, follow the link to get the ISO and instructions for installing it on an SD Card.

https://www.raspberrypi.org/forums/viewtopic.php?t=275370

It may work on another 64bit OS, like Linux Server or Mate, but has not been tested.

## Installation

Clone this repository, will include binaries inside bin.

Run the pull-hlf-arm-images.sh this will pull necesary images from dockerhub

```bash
sh pull-hlf-arm-images.sh
```

## Setting Up Go Path
- Add gopath
```export GOPATH=$HOME/go```

- Add hyperledger source to go path

``` mkdir -p $GOPATH/src/github.com/hyperledger```
 - Clone fabric 2.3
 ```git clone -b release-2.3 https://github.com/hyperledger/fabric.git```

## Usage

To test the binaries and images, try the test-network provided by HLF.

Follow the instructions in the link to run the test-network


https://hyperledger-fabric.readthedocs.io/en/latest/test_network.html#bring-up-the-test-network

## How to build these images

The images were built using dockers Buildx which allows for images to be built on multiple operating systems, the following explains how to use this:
https://github.com/hyperledger/fabric/pull/1086

These changes were applied on cloned 2.3 repo and built in a linux VM then pushed to dockerhub and then pulled into the raspberry pi.

Fabric CA images(v1.4.7) were pulled from another dockerhub repo as they already existted for ARM64 *But cyrptogen is used, not a CA*
## How to build Binaries

Binaries were built by cloning the hyperledger fabric 2.3 release repo and running:

```make native```

These binaries were then moved into the fabric samples folder replacing the bin folder contents.

This was done again with the fabric-ca repo, running:

``` make fabric-ca-client ```
``` make fabric-ca-server ```

and the binaries created were moved to the bin with the other created binaries.

NOTE: the binaries included in the repo for CA are for 1.4.9 while the docker images are 1.4.7, Will change these binaries back later to 1.4.7 to match the images, but currently had no issues running then in the test-network script
