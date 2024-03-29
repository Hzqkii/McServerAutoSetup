#!/bin/bash

read -r -p "THIS IS ONLY FOR DEBIAN AND DEBAIN BASED SERVERS/DISTROS [y/N] " response
if [[ "$response" = [Yy]* ]]
then
    sudo apt update && sudo apt upgrade && sudo apt install openjdk-17-jdk openjdk-17-jre

    cd "$HOME"
    mkdir server
    cd server

    pv=1.20.2 #paper version
    bn=280 #paper build number
    wget "https://api.papermc.io/v2/projects/paper/versions/${pv}/builds/${bn}/downloads/paper-${pv}-${bn}.jar"

    mkdir plugins
    cd plugins

    vvv=4.8.1 #viaversion version
    vbv=4.8.1 #viabackwards version
    wget "https://github.com/ViaVersion/ViaVersion/releases/download/${vvv}/ViaVersion-${vvv}.jar"
    wget "https://github.com/ViaVersion/ViaBackwards/releases/download/${vbv}/ViaBackwards-${vbv}.jar"
    clear

    cd ../

    wget "https://raw.githubusercontent.com/Hzqkii/McServerAutoSetup/main/startserver.sh"

    echo "This script will now terminate itself. You will need to edit the launch script for the server, using the command 'nano $HOME/server/startserver.sh'."
    echo "Change the '3' in '-Xmx3G' and '-Xmn3G' to allocate the desired amount of RAM to the server!"
else
    exit
fi
