#!/bin/bash
# Environment variables for Org1

export CORE_PEER_TLS_ENABLED=true
export CORE_PEER_LOCALMSPID="Org1MSP"
export CORE_PEER_TLS_ROOTCERT_FILE=${PWD}/organizations/peerOrganizations/org1.example.com/peers/peer0.org1.example.com/tls/ca.crt
export CORE_PEER_MSPCONFIGPATH=${PWD}/organizations/peerOrganizations/org1.example.com/users/Admin@org1.example.com/msp
export CORE_PEER_ADDRESS=localhost:7051

export FABRIC_CFG_PATH=$PWD/../config
export PATH=../bin:$PATH


while [[ $# -ge 1 ]] ; do
  key="$1"
  case $key in
  -ao )
    args='{"function":"InitLedger","Args":[]}'
    #args='{"function":"CreateObservation","Args":["1", "test", "20"]}'
    #echo $args
    # peer chaincode invoke -o localhost:7050 --ordererTLSHostnameOverride orderer.example.com --tls --cafile ${PWD}/organizations/ordererOrganizations/example.com/orderers/orderer.example.com/msp/tlscacerts/tlsca.example.com-cert.pem -C mychannel -n basic --peerAddresses localhost:7051 --tlsRootCertFiles ${PWD}/organizations/peerOrganizations/org1.example.com/peers/peer0.org1.example.com/tls/ca.crt -c $args
    peer chaincode invoke -o localhost:7050 --ordererTLSHostnameOverride orderer.example.com --tls --cafile ${PWD}/organizations/ordererOrganizations/example.com/orderers/orderer.example.com/msp/tlscacerts/tlsca.example.com-cert.pem -C mychannel -n basic --peerAddresses localhost:7051 --tlsRootCertFiles ${PWD}/organizations/peerOrganizations/org1.example.com/peers/peer0.org1.example.com/tls/ca.crt --peerAddresses localhost:9051 --tlsRootCertFiles ${PWD}/organizations/peerOrganizations/org2.example.com/peers/peer0.or g2.example.com/tls/ca.crt -c $args
    shift
    ;;
  -ac )
    id=$2
    args='{"function":"CreateChunk","Args":["'${id}'","3","test","20"]}'
    #args='{"function":"CreateObservation","Args":["1", "test", "20"]}'
    #echo $args
    peer chaincode invoke -o localhost:7050 --ordererTLSHostnameOverride orderer.example.com --tls --cafile ${PWD}/organizations/ordererOrganizations/example.com/orderers/orderer.example.com/msp/tlscacerts/tlsca.example.com-cert.pem -C mychannel -n basic --peerAddresses localhost:7051 --tlsRootCertFiles ${PWD}/organizations/peerOrganizations/org1.example.com/peers/peer0.org1.example.com/tls/ca.crt -c $args
    shift
    ;;
  -q )
    id=$2
    args='{"function":"ReadAsset","Args":["'${id}'"]}'
    peer chaincode query -C mychannel -n basic -c $args
    shift
    ;;
  -qa )
    peer chaincode query -C mychannel -n basic -c '{"Args":["GetAllAssets"]}'
    shift
    ;;
  -d )
    id=$2
    args='{"function":"DeleteAsset","Args":["'${id}'"]}'
    #args='{"function":"CreateObservation","Args":["1", "test", "20"]}'
    #echo $args
    peer chaincode invoke -o localhost:7050 --ordererTLSHostnameOverride orderer.example.com --tls --cafile ${PWD}/organizations/ordererOrganizations/example.com/orderers/orderer.example.com/msp/tlscacerts/tlsca.example.com-cert.pem -C mychannel -n basic --peerAddresses localhost:7051 --tlsRootCertFiles ${PWD}/organizations/peerOrganizations/org1.example.com/peers/peer0.org1.example.com/tls/ca.crt -c $args
    shift
    ;;
  esac
  shift
done




