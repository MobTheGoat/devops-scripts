#!/bin/bash
if ! id "testuser" &>/dev/null; then
    useradd -m testuser
    echo "testuser:1234" | chpasswd
    echo "testuser crees"
else
    echo "testuser deja crees"
fi

if [ ! -d "/home/testuser/workspace" ]; then
    mkdir -p /home/testuser/workspace
    echo "Dossiers crees"
else 
    echo "Dossiers deja crees"
fi

echo "=== SYSTEME INFORMATION===" > /home/testuser/workspace/notes.txt
echo "DATE: $(date)" >> /home/testuser/workspace/notes.txt
echo "HOSTNAME: $(hostname)" >> /home/testuser/workspace/notes.txt
echo "USER: $(whoami)" >> /home/testuser/workspace/notes.txt
