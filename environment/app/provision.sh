#!/bin/bash
#
# provision.sh
#
# Need to sort out the versioning of the software installed, but that can be done later

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
sudo npm install pm2 -g

# go to app and run
cd /app

npm install

# need to change this bit in a bit

# Point to DB_HOST, need to find a way to take this from a Vagrantfile
# Works fine though
DB_HOST=192.168.33.20 pm2 start app.js
