#!/bin/bash
# backup/autobackup.sh

# Change these if you want
SOURCE="$HOME/Documents"
DEST="$HOME/Backups"
TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")

TARGET="$DEST/backup_$TIMESTAMP"

mkdir -p "$TARGET"
cp -r "$SOURCE/"* "$TARGET"

echo "Backup of '$SOURCE' completed to '$TARGET'"

