#!/bin/bash

#test if brew is installed, if it is remove it. !!!! THIS WILL ALSO REMOVE ANY PACKAGES INSTALLED WITH BREW !!!!
if !which brew > /dev/null; then
    { echo "Brew is not installed, nothing to do"; }
    
else
    { echo "Brew is installed, removing it" $'\n'; echo "!!!! THIS WILL ALSO REMOVE ANY PACKAGES INSTALLED WITH BREW !!!!";}
    while true; do
    read -p "Do you wish to install this program? (Please use Y/N) " yn
    case $yn in
        [Yy]* ) echo | /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/uninstall.sh)"; break;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done

fi