#!/usr/bin/env bash
#
# Name: ipsDuplicados.sh
# Language: bash
# Function: Search duplicate IP address
# Prerequisites
# Install: aptitude install iputils-arping
#


LOGFILE=/tmp/duplicados.log
ADR='192.168.16'
ETH='eno1'

MENSAGEM_USO="

NOME
  $(basename "$0")

DESCRIÇÃO
Uso: $(basename "$0") [-h | -T | -L | -A]

  -T, --tela     Saida na Tela
  -L, --log      Saida no Log
  -h, --help     Ajuda
  default        Ajuda
"

clear
echo Iniciando busca...

# Tratamento das opções de linha de comando
case "$1" in
    -h | --help)
        echo "$MENSAGEM_USO"
        exit 0
    ;;
    -T | --tela)
        clear
        echo ----------------------------------------------------
		for ip in {1..254}
		do
			echo 
			echo "$ADR"."${ip}" 
			/usr/bin/arping -I $ETH -c 3 -D "$ADR.${ip}" 
		done
		echo ----------------------------------------------------
        exit 0
    ;;
    -L | --log)
        clear
        echo ---------------------------------------------------- >> $LOGFILE   
		for ip in {1..254}
		do
			echo  >> $LOGFILE
			echo "$ADR"."${ip}" >> $LOGFILE
			/usr/bin/arping -I $ETH -c 3 -D "$ADR.${ip}" >> $LOGFILE
		done
        echo ---------------------------------------------------- >> $LOGFILE		
        exit 0
    ;;
    *)
      clear
      echo "$MENSAGEM_USO"
      exit 0
    ;;
esac

