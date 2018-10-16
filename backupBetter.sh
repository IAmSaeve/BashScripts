#!/bin/bash

FILENAME=$1-$(date +%d%m%Y).tgz
echo Starting backup
mkdir backups
tar -I "pigz -9" -vcf backups/$FILENAME $2
echo Backup complete
