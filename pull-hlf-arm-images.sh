#!/bin/bash
# download the images and then tag thhem as default images

# fabric-baseos
docker pull ottoflaherty/fabric-baseos:arm64-2.3
docker tag ottoflaherty/fabric-baseos:arm64-2.3 hyperledger/fabric-baseos

# fabric-tools
docker pull ottoflaherty/fabric-tools:arm64-2.3
docker tag ottoflaherty/fabric-tools:arm64-2.3 hyperledger/fabric-tools
# orderer
docker pull ottoflaherty/fabric-orderer:arm64-2.3
docker tag ottoflaherty/fabric-orderer:arm64-2.3 hyperledger/fabric-orderer
# peer
docker pull ottoflaherty/fabric-peer:arm64-2.3
docker tag ottoflaherty/fabric-peer:arm64-2.3 hyperledger/fabric-peer

# fabric-ccenv
docker pull ottoflaherty/fabric-ccenv:arm64-2.3
docker tag ottoflaherty/fabric-ccenv:arm64-2.3 hyperledger/fabric-ccenv

#fabric-CA
docker pull chinyati/fabric-ca:arm64-1.4.7
docker tag chinyati/fabric-ca:arm64-1.4.7 hyperledger/fabric-ca