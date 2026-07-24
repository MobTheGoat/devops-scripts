#!/bin/bash

if pgrep ssh > /dev/null; then
    echo "ssh khedam"
    SSH_STATUS="khedam"
else
    echo "ssh makhedamch"
    SSH_STATUS="makhedamch"
fi

RAM_FREE=$(free -m | awk 'NR==2{print $4}')

if [ $RAM_FREE -lt 500 ]; then
    echo "Warning: RAM 9lola! ($RAM_FREE MB free)"
else
    echo "RAM bikhir ($RAM_FREE MB free)"
fi

DISK_FREE=$(df / | awk 'NR==2{print $5}' | tr -d '%')

if [ $DISK_FREE -gt 80 ]; then
    echo "Warning: Disk 3amr ($DISK_FREE% used)"
else
    echo "Disk bikhir ($DISK_FREE% used)"
fi

echo "=== Monitor Rapport ===" > monitor.log
echo "Date: $(date)" >> monitor.log
echo "SSH: $SSH_STATUS" >> monitor.log
echo "RAM: $RAM_FREE" >> monitor.log
echo "DISK: $DISK_FREE" >> monitor.log


