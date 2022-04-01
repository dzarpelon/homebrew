#!/bin/bash

#test if brew is installed, if it is, try to update else install it.
if which brew > /dev/null; then
    { echo "Brew is installed, making sure it's on latest version"; brew update;}
else
    { echo >&2 "Installing Homebrew Now"; echo | /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"; }
fi