#!/usr/bin/env bash

sudo apt-get update
sudo apt-get upgrade -y

# Install nginx web server
sudo apt-get install -y nginx

# Start nginx web server 
sudo systemctl start nginx

# Display nginx web server status to check it is running
sudo systemctl status nginx