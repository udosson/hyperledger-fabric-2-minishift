#!/bin/bash

export CHANNEL_NAME="channel1"
export CHAINCODE_NAME="cc"
export CHAINCODE_VERSION="1.0"
export FABRIC_CFG_PATH="/etc/hyperledger/fabric"
export CORE_PEER_MSPCONFIGPATH="/fabric/crypto-config/peerOrganizations/org1.example.com/users/Admin@org1.example.com/msp"
export CORE_PEER_LOCALMSPID="Org1MSP"
export CORE_PEER_ADDRESS="blockchain-org1peer1:30110"
export ORDERER_URL="blockchain-orderer:31010"

peer chaincode instantiate -o ${ORDERER_URL} -C ${CHANNEL_NAME} -n ${CHAINCODE_NAME} -v ${CHAINCODE_VERSION} -P "AND('Org1MSP.member','Org2MSP.member','Org3MSP.member','Org4MSP.member')" -c '{"Args":["init","a","300","b","600"]}'