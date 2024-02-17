#!/usr/bin/env bash
#
# Name: runAsRoot.sh
# Language: bash
# Function: Test if the user running the script is root
#

if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi
