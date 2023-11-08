#!/bin/bash

pv=1.20.2
bn=280
cd $HOME/server
java -Xms3G -Xmx3G -jar paper-${pv}-${bn}.jar --nogui
