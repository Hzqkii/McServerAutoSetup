#!/bin/bash

pv=1.19.4
bn=522
cd $HOME/server
java -Xms3G -Xmx3G -jar paper-${pv}-${bn}.jar --nogui
