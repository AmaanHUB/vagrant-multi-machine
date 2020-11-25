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

# may need to change this to npm start & after the environment variables
DB_HOST=database.local PORT=27017 pm2 start app.js &
