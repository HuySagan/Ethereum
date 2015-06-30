#!/bin/bash
#Replaces the ethereum guide with this. Don't Forget to read the GUIDE AS WELL.
#Creating a function and calling it for pause function
function pause(){
    read -p "$*"
}

#Call it
pause 'This script will install most of the Ethereum packages, press [Enter] to continue...'
#read -p "This script will install most of the needed software, Press [Enter] to continue..."

#Ubuntu apt-get install( install package), apt-get remove {package_name} to remove package.

##Enable sources, add PPAs and update sources
#setd 's/#deb/deb/' -i /etc/apt/sources.list
sudo apt-get -y update
sudo apt-get -y install language-pack-en-base
sudo dpkg-reconfigure locales
sudo apt-get install software-properties-common
sudo add-apt-repository -y ppa:ethereum/ethereum-qt
sudo add-apt-repository -y ppa:ethereum/ethereum
sudo add-apt-repository -y ppa:ethereum/ethereum-dev
sudo apt-get update 
sudo apt-get upgrade
sudo apt-get dist-upgrade

#Adding needed software

sudo apt-get install ethereum
sudo apt-get install cpp-ethereum
#sudo apt-get install altethzero
#sudo apt-get install eth
#cpp-ethereum inclues: mix,neth, solc, sc, lllc, rlp,eth,alethzero and testeth.


#Call pause function again
pause 'After this you can run geth to start a node, but we still need more packages. Press [Enter] to continue...'

#AMD fglrx-updates (ati drivers)

sudo apt get install fglx-updates
#sudo apt get install fglx, Derek having issues with his card, unable to recognize.
#Driver related maybe???

pause 'Before you go any further, please initialize your gpu, : sudo aticonfig --apdapter=all --initial. Then select the gpu from Hardware system.'
#Important run aticonfig --adapter=all --initial
sudo aticonfig --adapter=all --initial

#List All your GPU
sudo aticonfig --list-adapters

#Currently geth only supports CPU miner natively. Geth can be used in conjunction with ethminer.

#Thus. Standalone miner is Etherminer, and Geth as a scheduler communicating via JSON-RPC.



#GPU mining 
# eth -m on -G -a <coinbase> -i -v 8 //

#Using etherminer with geth

#geth account new
#geth --rpccorsdomain localhost 2>> geth.log &
#ethminer -G // -G for GPU -M for benchmark
#tail -f geth.log
