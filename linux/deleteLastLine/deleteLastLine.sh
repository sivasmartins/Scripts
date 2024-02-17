#!/usr/bin/env bash
#
# Name: deleteLastLine.sh
# Language: bash
# Function: Delete last line from a file
#

sed '$d' teste.txt > teste2.txt
rm -f teste.txt
mv teste2.txt teste.txt
