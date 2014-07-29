#!/bin/bash

echo Purpose: This script is intended to be the minimum amount of shell necessary so further development can be done in nodejs coffeescript.
echo
echo Prompting for sudo credentials immediately so they will be cached for later use as necessary. So the entire script doesn\'t need to run as sudo.
echo
sudo echo Output from sudo echo.
echo
echo Done with first time use of sudo.
echo

NODE_VERSION=v0.10.29
PKG_FILE=node-$NODE_VERSION.pkg
echo Attempting to download the OS X installer for nodejs at version $NODE_VERSION.
echo
curl --silent http://nodejs.org/dist/$NODE_VERSION/$PKG_FILE > $PKG_FILE
echo Done downloading.
echo
echo Attempting to run node.js installer without requiring user interaction.
echo
sudo /usr/sbin/installer -pkg ./$PKG_FILE -target /
echo
echo Done with running installer.
echo
echo Attempting to install coffee-script globally.
echo
sudo npm install -g coffee-script
echo
echo Done with bootstrap script.
echo
