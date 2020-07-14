#!bin/bash

# get admin priviliges
sudo su

# install httpd
yum update -y
yum install -y httpd.x86_64
systemctl start httpd.service
systemctl enable httpd.service

#Install git in your EC2 instance
sudo yum install git -y

git clone https://github.com/kocabiyik/aws-ml

cat aws-ml/bootstrap1.html > /var/www/html/index.html
echo "$(hostname -f)" >> /var/www/html/index.html
cat bootstrap2.html >> /var/www/html/index.html
