#!/bin/bash
#
# provision.sh
# Distributed under terms of the MIT license.

sudo apt update && sudo apt upgrade

# Install nginx
sudo apt install nginx -y

# Install git
sudo apt install git -y

# Install nodejs
sudo apt install nodejs -y

# Install npm (needs to do separately)
sudo apt install npm -y

# Install pm2 with npm
sudo npm install pm2

# go to app and run
cd /app

npm install

# need to change this bit in a bit
npm start
