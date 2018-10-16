#!/bin/bash
echo Starting backup
mkdir backups
tar -I "pigz -9" -vcf backups/backup.tar.gz Skole/*
echo Backup complete
