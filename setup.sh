#!/bin/bash

if [ ! -d "/home/ben/monprojet" ]; then
     mkdir -p /home/ben/monprojet/logs
     mkdir -p /home/ben/monprojet/scripts
     mkdir -p /home/ben/monprojet/config
     echo "Dossiers crees"
else
     echo "Dossiers deja crees"
fi 

echo "APP_NAME=MonApp" > /home/ben/monprojet/config/app.config
echo "VERSION=1.0" >> /home/ben/monprojet/config/app.config
echo "PORT=8080" >> /home/ben/monprojet/config/app.config

if ! id "devops" &>/dev/null; then
     useradd -m devops
     echo "devops ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers
     echo "User devops crees"
else
     echo "user devops deja crees"
fi

echo "===Server Info===" > /home/ben/monprojet/logs/info.log
echo "HOSTNAME: $(hostname)" >> /home/ben/monprojet/logs/info.log
echo "DATE: $(date)" >> /home/ben/monprojet/logs/info.log
echo "IP: $(ip addr show eth0 | grep 'inet ' | awk '{print $2}')" >> /home/ben/monprojet/logs/info.log
echo "USER: $(whoami)" >> /home/ben/monprojet/logs/info.log

