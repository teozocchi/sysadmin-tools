#!/bin/bash
# backup/autobackup.sh

SOURCE="$HOME/Documents"
DEST="$HOME/Backups"
TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")

TARGET="$DEST/backup_$TIMESTAMP"

mkdir -p "$TARGET"
cp -r "$SOURCE/"* "$TARGET"

echo "Backup of '$SOURCE' completed to '$TARGET'"

# Optional notify
script_dir=$(dirname "$0")
bash "$script_dir/../utils/notify.sh" "Backup Complete" "Saved to $TARGET" "folder"

