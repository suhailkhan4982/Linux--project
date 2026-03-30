#!/bin/bash
# Script 1: System Identity Report
# Author: Mohd Suhail
# Project Choice: Firefox

STUDENT_NAME="Nitin Yadav"
SOFTWARE_CHOICE="Firefox"
DISTRO=$(cat /etc/os-release | grep "PRETTY_NAME" | cut -d'=' -f2 | tr -d '"')

echo "=========================================="
echo "        OPEN SOURCE AUDIT REPORT          "
echo "=========================================="
echo "Student Name    : $STUDENT_NAME"
echo "Software Choice : $SOFTWARE_CHOICE"
echo "------------------------------------------"
echo "Linux Distro    : $DISTRO"
echo "Kernel Version  : $(uname -r)"
echo "Current User    : $(whoami)"
echo "System Uptime   : $(uptime -p)"
echo "------------------------------------------"
echo "License Note: This OS is covered by the GPL."
echo "=========================================="
