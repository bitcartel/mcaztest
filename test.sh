#!/bin/bash

set -x

echo "Initializing MultiChain installation"
date
ps axjf

#############
# Parameters
#############

AZUREUSER=$1
HOMEDIR="/home/$AZUREUSER"
VMNAME=`hostname`
echo "User: $AZUREUSER"
echo "User home dir: $HOMEDIR"
echo "vmname: $VMNAME"

cd $HOMEDIR

date
echo "Completed MultiChain install $$"

