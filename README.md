# Deploying MultiChain on Microsoft Azure

This Microsoft Azure template deploys a MultiChain node to create a new private blockchain.

[![Deploy to Azure](http://azuredeploy.net/deploybutton.png)](https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2FAzure%2Fazure-quickstart-templates%2Fmaster%2Fmultichain-on-ubuntu%2Fazuredeploy.json)

Once your deployment is complete you will have a private blockchain called 'chain1' and you can connect to the node from other computers with MultiChain installed.

# Template Parameters

When you launch the installation of the VM, you need to specify the following parameters:

When you launch the installation of the cluster, you need to specify the following parameters:
* `vmDnsName`: This is the public DNS name for the VM.  You need to specify an unique name.
* `adminUsername`: This is the username you will use for logging into to the VM.
* `adminPassword`: Azure requires passwords to have at least three of the following: one upper case, one lower case, a special character, or a number.
* `vmSize`: The type of VM that you want to use for the node. The default size is D1 (1 core 3.5GB RAM) but you can change that if you expect to run workloads that require more RAM or CPU resources.
* `location`: The region where the VM should be deployed to

Once the deployment has completed, you will receive the ``connectAddress`` that can be used to connect to your new blockchain.  The blockchain's name is ``chain1`` and the deployed MultiChain name has the role of Administrator.

# Connect to the blockchain from another computer

Install Multichain on a second computer and run the command `multichaind <connectAddress>` where the ``connectAddress`` argument was obtained after deployment.

More information about how to connect to a blockchain and grant permissions can be found in the [http://www.multichain.com/getting-started/](Getting Started) tutorial.

