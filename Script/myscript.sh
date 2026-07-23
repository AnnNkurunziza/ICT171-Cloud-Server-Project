#!/bin/bash

# Update the server package list
sudo apt update -y

# Install the Apache web server
sudo apt install apache2 -y

# Restart Apache to make sure it is running
sudo systemctl restart apache2