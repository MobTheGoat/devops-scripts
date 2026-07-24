#!/bin/bash

mkdir -p /home/ben/logs

touch /home/ben/logs/app1.log
touch /home/ben/logs/app2.log
touch /home/ben/logs/app3.log
touch /home/ben/logs/error1.log
touch /home/ben/logs/error2.log

for FILE in /home/ben/logs/*.log; do
    echo "Log file: $(basename $FILE)" > $FILE
    echo "Date: $(date)" >> $FILE
done

echo "Fichiers kaynin:"
for FILE in /home/ben/logs/*.log; do
    echo "-$(basename $FILE)"
done

SUPPRIMER=0
for FILE in /home/ben/logs/error*.log; do
    echo "supprime: $(basename $FILE)"
    rm $FILE
    SUPPRIMER=$((SUPPRIMER+1))
done

RESTANTS=$(ls /home/ben/logs/*.log 2> /dev/null | wc -l)

echo "==================================="
echo "Nettoyage kaml"
echo "Fichiers supprimer: $SUPPRIMER"
echo "Fichiers restants: $RESTANTS"
echo "==================================="
