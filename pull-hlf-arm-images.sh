#!/bin/bash
# download the images and then tag thhem as default images

# fabric-baseos
docker pull ottoflaherty/fabric-baseos:arm64-2.3

# fabric-tools
docker pull ottoflaherty/fabric-tools:arm64-2.3

# orderer
docker pull ottoflaherty/fabric-orderer:arm64-2.3

# peer
docker pull ottoflaherty/fabric-peer:arm64-2.3

# fabric-ccenv
docker pull ottoflaherty/fabric-ccenv:arm64-2.3


