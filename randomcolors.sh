#!/bin/bash
#  ____ _____ 
# |  _ \_   _|  Derek Taylor (DistroTube)
# | | | || |  	http://www.youtube.com/c/DistroTube
# | |_| || |  	http://www.gitlab.com/dwt1/ 
# |____/ |_|  	
# 
# Runs a random color script from my shell-color-scripts collection.
# Add "exec randomcolors.sh" to your bashrc or zshrc for more fun!


dirOptions=$(/bin/ls /opt/shell-color-scripts/ -I README.md -I LICENSE -I PKGBUILD -I shell-color-scripts.sh -I randomcolors.sh | cut -d " " -f 1)
pickRandom=$(shuf -e ${dirOptions[@]} -n 1)
exec /opt/shell-color-scripts/${pickRandom}
