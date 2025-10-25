#!/bin/bash
echo "Installing Moodle..."
sudo apt update
sudo apt install -y apache2 mysql-server php
sudo mysql -e "CREATE DATABASE moodle;"
cd /var/www/html
sudo wget https://download.moodle.org/download.php/direct/stable501/moodle-latest-501.zip
sudo apt install -y unzip
sudo unzip moodle-latest-501.zip
echo "Done! Visit: http://your-ip/moodle"