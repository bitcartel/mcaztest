#!/bin/bash

set -x

echo "Initializing MultiChain installation"
date
#ps axjf

#############
# Parameters
#############

AZUREUSER=$1
CHAINNAME=$2

HOMEDIR="/home/$AZUREUSER"
VMNAME=`hostname`
echo "User: $AZUREUSER"
echo "User home dir: $HOMEDIR"
echo "vmname: $VMNAME"

cd $(mktemp -d)
wget http://www.multichain.com/download/multichain-latest.tar.gz
tar xvf multichain-latest.tar.gz
sudo cp multichain-1.0-alpha*/multichain* /usr/local/bin/
sed -i "s/^default-network-port =.*/default-network-port = 8333/" $HOME/.multichain/${CHAINNAME}/params.dat
sed -i "s/^default-rpc-port =.*/default-rpc-port = 8332/" $HOME/.multichain/${CHAINNAME}/params.dat
cd $HOMEDIR
multichain-util create ${CHAINNAME}
multichaind ${CHAINNAME} -daemon
sleep 5
multichain-cli getinfo ${CHAINNAME}

date
echo "Completed MultiChain install $$"

