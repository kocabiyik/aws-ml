#!bin/bash

# get admin priviliges
sudo su

# install httpd
yum update -y
yum install -y httpd.x86_64
systemctl start httpd.service
systemctl enable httpd.service

echo "<h1>EC2 Instance:<h1>" > /var/www/html/index.html
echo "$(hostname -f)" >> /var/www/html/index.html
