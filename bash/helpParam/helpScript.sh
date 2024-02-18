#!/usr/bin/env bash
#
# Name: helpScript.sh
# Language: bash
# Function: Script with params including help
#

MENSAGEM_USO="

NAME
  $(basename "$0")

DESCRIPTION
Use: $(basename "$0") [-h | -T | -L | -A]

  -S, --screen   Screen output
  -L, --log      Log output
  -h, --help     Help
  default        Help
"

clear

# Options
case "$1" in
    -h | --help)
        echo "$MENSAGEM_USO"
        exit 0
    ;;
    -S | --screen)
        clear
        echo ----------------------------------------------------
		echo
		echo Result output on screen
		echo
		echo ----------------------------------------------------
        exit 0
    ;;
    -L | --log)
        clear
        echo ---------------------------------------------------- 
		echo
		echo Result output on "log" :/
		echo
        echo ---------------------------------------------------- 
        exit 0
    ;;
    *)
      clear
      echo "$MENSAGEM_USO"
      exit 0
    ;;
esac
