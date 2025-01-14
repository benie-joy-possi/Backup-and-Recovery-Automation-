#!/bin/bash


SOURCE=/home/ubuntu/source
BACKUP=/home/ubuntu/dest
DATE=$(date +"%Y-%m-%d_%H-%M-%S")   
BACKUP_FILE="$BACKUP/full_backup.tar.gz" 
SNAPSHOT="$BACKUP/incremental.snar"    


mkdir -p "$BACKUP"
touch "$SNAPSHOT"
touch "$BACKUP/incremental_backup_$DATE.tar.gz"

if [ ! -f "$BACKUP_FILE" ]; then
    echo "Creating full backup..."
    tar -czf "$BACKUP_FILE" "$SOURCE"
    echo "The first backup has been completed succesfully $BACKUP_FILE on $DATE" >> backup.log
else
    echo "Creating incremental backup..."
    tar -czg "$SNAPSHOT" -f "$BACKUP/incremental.tar.gz" "$SOURCE"
    echo "the Incremental backup has been  completed: incremental.tar.gz on $DATE" >>  backup.log
fi



    



