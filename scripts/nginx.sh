#!/usr/bin/bash

# Reload systemd manager configuration
sudo systemctl daemon-reload

# Remove the default Nginx configuration
sudo rm -f /etc/nginx/sites-enabled/default

# Define the folder where settings.py is located
FOLDER_NAME="blog"  # Replace 'blog' with the correct folder name if different

# Copy the custom Nginx configuration to the sites-available directory
sudo cp /home/ubuntu/blogprojectdrf/nginx/nginx.conf /etc/nginx/sites-available/$FOLDER_NAME

# Create a symbolic link to the sites-enabled directory
sudo ln -s /etc/nginx/sites-available/$FOLDER_NAME /etc/nginx/sites-enabled/

# Add the 'ubuntu' user to the 'www-data' group
sudo gpasswd -a www-data ubuntu

# Restart the Nginx service
sudo systemctl restart nginx
