#!/bin/bash

apt update && apt upgrade
apt install unzip
apt install openjdk-17-jdk openjdk-17-jre

cd $HOME
mkdir server
cd server

pv=1.19.4
bn=522
wget https://api.papermc.io/v2/projects/paper/versions/${pv}/builds/${bn}/downloads/paper-${pv}-${bn}.jar

mkdir plugins

cd plugins

vvv=4.6.2
vbv=4.6.1
wget https://github.com/ViaVersion/ViaVersion/releases/download/${vvv}/ViaVersion-${vvv}.jar
wget https://github.com/ViaVersion/ViaBackwards/releases/download/${vbv}/ViaBackwards-${vbv}.jar
clear

cd ../



echo This script will now terminate itself you will need to edit the launch script for the server, use the command "nano $HOME/server/start.sh"
echo change the "artefactname" to the name of the paper jar and change the 3 in "-Xmx3G and -Xmn3G" to what ever ram gb you want!
