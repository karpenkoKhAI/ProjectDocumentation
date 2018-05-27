#!/bin/bash

sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get install default-jre -y
mkdir ~/.aws
echo "[default]" >> ~/.aws/credentials
echo "aws_access_key_id = POSHELNAHUI" >> ~/.aws/credentials
echo "aws_secret_access_key = SOSYHUIHUITEBEANEKLUCHI" >> ~/.aws/credentials
sudo usermod -a -G docker $USER
sudo useradd jenkins
sudo usermod -a -G root jenkins
sudo usermod -a -G root docker
base=https://github.com/docker/machine/releases/download/v0.14.0 &&   curl -L $base/docker-machine-$(uname -s)-$(uname -m) >/tmp/docker-machine &&   sudo install /tmp/docker-machine /usr/local/bin/docker-machine
docker-machine version
docker-machine create --driver amazonec2 ReleaseServer
eval $(docker-machine env ReleaseServer)
docker-machine env ReleaseServer
sudo reboot
