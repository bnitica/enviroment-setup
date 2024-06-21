#!/bin/bash

sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get install -y build-essential
sudo apt-add-repository -y ppa:ansible/ansible
sudo apt-get update
sudo apt-get install -y curl ansible 
sudo apt-get autoremove -y
sudo apt-get clean autoclean -y
ansible-playbook -v local.yml
zsh
