#!/bin/bash
# utils/notify.sh

# Show a desktop notification using notify-send
# Usage: ./notify.sh "Title" "Message" "icon-name"

title="$1"
message="$2"
icon="${3:-dialog-information}"  # default icon

if command -v notify-send >/dev/null 2>&1; then
    notify-send -u normal -i "$icon" "$title" "$message"
else
    echo "[$title] $message"
fi

