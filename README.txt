# AWS EC2 - AMZN LINUX USER DATA

#! /bin/sh
yum update -y
amazon-linux-extras install docker
service docker start
usermod -a -G docker ec2-user
chkconfig docker on
cd /home/ec2-user
yum install git -y
git clone https://github.com/kosho9999/test_flask_container.git
cd ./test_flask_container

#BUILD DOCKER IMAGE FROM GITHUB

docker build --no-cache --progress=plain -t ja_flask_test_container .

docker run -p 5000:5000 ja_flask_test_container
