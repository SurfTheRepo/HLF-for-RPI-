#!/bin/bash


if [ "$1" == "admin" ]
then
    export ORDERER_ADMIN_TLS_SIGN_CERT=${PWD}/organizations/ordererOrganizations/example.com/orderers/orderer.example.com/tls/server.crt
    export ORDERER_ADMIN_TLS_PRIVATE_KEY=${PWD}/organizations/ordererOrganizations/example.com/orderers/orderer.example.com/tls/server.key
    export ORDERER_CA=${PWD}/organizations/ordererOrganizations/example.com/orderers/orderer.example.com/msp/tlscacerts/tlsca.example.com-cert.pem
fi
if [ "$1" == "laptop" ];
then
    export CORE_PEER_LOCALMSPID="Org1MSP"
    export CORE_PEER_TLS_ROOTCERT_FILE=${PWD}/organizations/peerOrganizations/org1.example.com/peers/peer0.org1.example.com/tls/ca.crt
    export CORE_PEER_MSPCONFIGPATH=${PWD}/organizations/peerOrganizations/org1.example.com/users/Admin@org1.example.com/msp
    export CORE_PEER_ADDRESS=192.168.86.156:7051
    export FABRIC_CFG_PATH=${PWD}/corelaptop/
fi

if [ "$1" == "pi1" ];
then
    export CORE_PEER_LOCALMSPID="Org1MSP"
    export CORE_PEER_TLS_ROOTCERT_FILE=${PWD}/organizations/peerOrganizations/org1.example.com/peers/peer1.org1.example.com/tls/ca.crt
    export CORE_PEER_MSPCONFIGPATH=${PWD}/organizations/peerOrganizations/org1.example.com/users/Admin@org1.example.com/msp
    export CORE_PEER_ADDRESS=192.168.86.74:8051
    export FABRIC_CFG_PATH=${PWD}/corepi/
fi


if [ "$1" == "pi2" ];
then
    export CORE_PEER_LOCALMSPID="Org1MSP"
    export CORE_PEER_TLS_ROOTCERT_FILE=${PWD}/organizations/peerOrganizations/org1.example.com/peers/peer2.org1.example.com/tls/ca.crt
    export CORE_PEER_MSPCONFIGPATH=${PWD}/organizations/peerOrganizations/org1.example.com/users/Admin@org1.example.com/msp
    export CORE_PEER_ADDRESS=192.168.86.151:9051
    export FABRIC_CFG_PATH=${PWD}/corepi/
fi


if [ "$1" == "chaincode" ];
then
    export CHANNEL_NAME=pichannel
    export CC_NAME=basic
    export CC_SRC_PATH=./asset-transfer-basic/chaincode-go
    export CC_SRC_LANGUAGE=go
    export CC_VERSION="1.0"
    export CC_SEQUENCE=1
    export CC_INIT_FCN="NA"
    export CC_END_POLICY=""
    export CC_COLL_CONFIG=""
    export CLI_DELAY=3
    export MAX_RETRY=5
    export VERBOSE=false
    export CC_RUNTIME_LANGUAGE=golang
    export CORE_PEER_TLS_ENABLED=true
    export PEER0_ROOT_Cert=${PWD}/organizations/peerOrganizations/org1.example.com/peers/peer0.org1.example.com/tls/ca.crt
    export PEER1_ROOT_Cert=${PWD}/organizations/peerOrganizations/org1.example.com/peers/peer1.org1.example.com/tls/ca.crt
    export PEER2_ROOT_Cert=${PWD}/organizations/peerOrganizations/org1.example.com/peers/peer2.org1.example.com/tls/ca.crt
    export PEER0_ADDR=192.168.86.156:7051
    export PEER1_ADDR=192.168.86.74:8051
    export PEER2_ADDR=192.168.86.151:9051
    export ORD_ADDR=192.168.86.150:7050
fi