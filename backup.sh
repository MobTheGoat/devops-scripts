#!/bin/bash
if [ ! -d "/home/ben/backup" ]; then
    mkdir -p /home/ben/backup/files
    mkdir -p /home/ben/backup/logs
    echo "Dossiers crees"
else
    echo "Dossiers deja crees"
fi

cp /home/ben/setup.sh /home/ben/backup/files/
cp /home/ben/usermanager.sh /home/ben/backup/files/

echo "=== Backup Rapport ===" > /home/ben/backup/logs/rapport.log
echo "DATE: $(date)" >> /home/ben/backup/logs/rapport.log
echo "USER: $(whoami)" >> /home/ben/backup/logs/rapport.log
echo "Fichiers copies: 2" >> /home/ben/backup/logs/rapport.log

echo "===================================="
echo "Backup kaml"
echo "Fichiers sauvgardes dans /home/ben/backup/files"
echo "===================================="
