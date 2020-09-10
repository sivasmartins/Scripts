#!/usr/bin/env bash
#
# name: menu02.sh
# author: sivaldo martins
# year: 2020
#
menu01 () {
   clear
   echo 'menu 01'
   read
}

menu02 () {
   clear
   echo 'menu 02'
   read
}

menu03 () {
   clear
   echo 'menu 03'
   read
}

menu04 () {
   clear
   echo 'menu 04'
   read
}

menu(){
	opcao=99
	while true; do
		clear
		echo "╔══════════════════╗"
		echo "║ Choose an option ║"
		echo "║ 1) Menu 01       ║"
		echo "║ 2) Menu 02       ║"
		echo "║ 3) Menu 03       ║"
		echo "║ 4) Menu 04       ║"
		echo "║ 0) Exit          ║"
		echo "╚══════════════════╝"
		echo -n "> "
		read opcao
		case "$opcao" in
			1)	menu01
				;;
			2)	menu02
				;;          
			3)	menu03
				;;
			4)	menu04
				;;			
			0)
				exit 0
		esac
		
	done
}

menu
