#!/bin/bash
# Script 2: VLC Package Inspector

PACKAGE="vlc"

# Check if VLC installed
if dpkg -l | grep -q "^ii  $PACKAGE"; then
    echo "$PACKAGE is installed."
    dpkg -s $PACKAGE | grep -E 'Version|Maintainer|Description'
else
    echo "$PACKAGE is NOT installed."
fi

# Case statement
case $PACKAGE in
    vlc) echo "VLC: A powerful open-source media player that plays almost any format." ;;
    firefox) echo "Firefox: Open-source browser for a free web." ;;
    git) echo "Git: Version control system built for developers." ;;
    python3) echo "Python: Community-driven programming language." ;;
    *) echo "Unknown package." ;;
esac
