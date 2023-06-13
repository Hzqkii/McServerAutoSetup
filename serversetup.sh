#!/bin/bash

read -r -p "THIS IS ONLY FOR DEBIAN AND DEBAIN BASED SERVERS/DISTROS [y/N] " response
if [[ "$response" =~ ^([yY][eE][sS]|[yY])$ ]]
then
    apt update && apt upgrade
apt install unzip
apt install openjdk-17-jdk openjdk-17-jre

cd $HOME
mkdir server
cd server

pv=1.20.1 #paper version
bn=18 #paper build number
wget https://api.papermc.io/v2/projects/paper/versions/${pv}/builds/${bn}/downloads/paper-${pv}-${bn}.jar

mkdir plugins

cd plugins

vvv=4.7.0 #viaversion version
vbv=4.7.0 #viabackwards version
wget https://github.com/ViaVersion/ViaVersion/releases/download/${vvv}/ViaVersion-${vvv}.jar
wget https://github.com/ViaVersion/ViaBackwards/releases/download/${vbv}/ViaBackwards-${vbv}.jar
clear

cd ../

wget https://raw.githubusercontent.com/Hzqkii/McServerAutoSetup/main/startserver.sh

echo This script will now terminate itself you will need to edit the launch script for the server, use the command "nano $HOME/server/startserver.sh"
echo Change the 3 in "-Xmx3G and -Xmn3G" to what ever ram you want to allocate to the server!

else
    exit
fi
