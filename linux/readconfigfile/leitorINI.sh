#!/usr/bin/env bash
#
# Name: leitoIni.sh
# Language: bash
# Function: Read a config file
#

CONFIGFILE="config.ini"

if [[ -f $CONFIGFILE ]]; then
    address=`grep address $CONFIGFILE | cut -f2 -d=`
    port=`grep port $CONFIGFILE | cut -f2 -d=`
    username=`grep username $CONFIGFILE | cut -f2 -d=`
else
    echo "Configuration File Not Found"
    exit 1
fi

echo $address
echo $port
echo $username
