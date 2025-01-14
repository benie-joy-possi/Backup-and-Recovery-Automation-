#!/bin/bash

# Define the archive file
ARCHIVE_FILE=/home/ubuntu/dest/full_backup.tar.gz 

# Define the directory where the archive will be extracted
#EXTRACT_DIR=/

# Extract the tar archive
tar -xvzf $ARCHIVE_FILE -C / #$EXTRACT_DIR

# Check if the extraction was successful
if [ $? -eq 0 ]; then
    echo "Backup successfully extracted to $EXTRACT_DIR"
else
    echo "Failed to extract backup"
fi


