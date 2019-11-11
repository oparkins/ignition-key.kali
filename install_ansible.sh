#!/bin/bash

apt update
apt install software-properties-common
apt-add-repository ppa:ansible/ansible
apt update
apt install ansible