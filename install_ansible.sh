#!/bin/bash
apt update -y
apt install python3 -y
apt install python3-pip -y
apt install software-properties-common -y
add-apt-repository --yes --update ppa:ansible/ansible
apt install ansible -y
pip install packaging
pip install docker