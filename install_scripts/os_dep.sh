#!/bin/bash
# DevOps training 2020 - Peter Mikaczo

#todo define AWX version, based on "https://github.com/ansible/awx" tags.
#AWX_VERSION=11.2.0
AWX_VERSION=15.0.1

#Install
echo "=====Install OS packages====="
yum install epel-release -y
#yum install ansible python-pip python-devel gcc git libselinux-python libselinux-python3 nodejs python3 -y
yum install ansible python-pip python-devel gcc git python3 libselinux-python3 -y

echo "=====Install Python packages====="
#pip install --upgrade pip
#pip install docker
#pip install docker-compose
pip3 install --upgrade pip
pip3 install docker
pip3 install docker-compose


echo "=====Install AWX via playbook====="
cd / && git clone --branch $AWX_VERSION https://github.com/ansible/awx.git --single-branch && cd /awx/installer/
ansible-playbook -i inventory install.yml
sleep 5 && docker ps