#!/bin/bash

pv=1.20.1
bn=69
cd $HOME/server
java -Xms3G -Xmx3G -jar paper-${pv}-${bn}.jar --nogui
