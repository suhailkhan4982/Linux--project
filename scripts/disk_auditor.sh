#!/bin/bash
# Script 3: Disk and Permission Auditor
# Author: Mohd Suhail
# Choice: Firefox

# List of important system directories to audit
DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "--- Directory Audit Report ---"

for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        # Extracting permissions, owner, and group using awk
        PERMS=$(ls -ld "$DIR" | awk '{print $1, $3, $4}')
        # Extracting size using du
        SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)
        echo "Directory: $DIR | Permissions: $PERMS | Size: $SIZE"
    else
        echo "Warning: $DIR does not exist on this system."
    fi
done

echo "------------------------------------------"
# Custom audit for Firefox configuration
FF_DIR="$HOME/.mozilla/firefox"
if [ -d "$FF_DIR" ]; then
    echo "Firefox config found at $FF_DIR"
    ls -ld "$FF_DIR" | awk '{print "Permissions: " $1 " | Owner: " $3}'
else
    echo "Firefox profile directory not found. Start Firefox to create it."
fi
