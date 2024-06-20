#!/usr/bin/env bash

sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get install -y software-properties-common build-essential
sudo apt-add-repository -y ppa:ansible/ansible
sudo apt-get update
sudo apt-get install -y curl ansible g++ 
sudo apt-get autoremove -y
sudo apt-get clean autoclean -y
ansible-playbook -v local.yml
zsh
