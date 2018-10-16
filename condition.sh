#!/bin/bash

FILENAME=$1-$(date +%d%m%Y).tgz
if [[ -a $FILENAME ]]; then
    echo "There have been backedup for today already!"
else
    echo "Starting backup"
    
    if [[ ! -d backups ]]; then
        echo "Creating backups dir"
        mkdir backups
        tar -I "pigz -9" -vcf $FILENAME $2
        echo "Backup complete"
    else
        tar -I "pigz -9" -vcf $FILENAME $2
        echo "Backup complete"
    fi
fi
