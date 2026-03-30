#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: Mohd Suhail
# Target: Firefox

PACKAGE="firefox"

echo "Checking for $PACKAGE..."

# Check if installed (using Debian/Ubuntu dpkg)
if dpkg -l $PACKAGE &>/dev/null; then
    echo "STATUS: $PACKAGE is installed."
    dpkg -s $PACKAGE | grep -E 'Version|License|Section'
else
    echo "STATUS: $PACKAGE is NOT installed."
fi

echo "------------------------------------------"
echo "Philosophy Note:"
case $PACKAGE in
    firefox)
        echo "Firefox: A non-profit fighter for an open and accessible web." ;;
    *)
        echo "Open source software: Built for the community, by the community." ;;
esac
echo "------------------------------------------"
