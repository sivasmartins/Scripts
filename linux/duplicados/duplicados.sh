#!/usr/bin/env bash
#
# Name: duplicados.sh
# Language: bash
# Function: Search duplicate MAC address
# Prerequisites
# Install: aptitude install iputils-arping
#

LOG=/tmp/duplicados.log
IP='10.240.126.'
clear
echo Iniciando busca... > $LOG
for ip in {1..254}
do
  echo "10.240.125.${ip}" >> $LOG
  /usr/bin/arping -I eth0 -c 3 -D "10.240.125.${ip}" > /dev/null
  echo -e "Resultado: " >> $LOG
  echo $? >> $LOG
  echo ------------------- >> $LOG
done
