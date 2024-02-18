#!/usr/bin/env bash
#
# name: menu03.sh
# author: sivaldo martins
# year: 2020
#

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

menu05 () {
   clear
   echo 'menu 05'
   read
}

menu06 () {
   clear
   echo 'menu 06'
   read
}

submenu () {
	opcao1=99
	while true; do
		clear
		echo " ╔═══════════════════╗"
		echo "╔══════════════════╗ ║"
		echo "║ Choose an option ║ ║"
		echo "║══════════════════║ ║"		
		echo "║ 5) Submenu 05    ║ ║"
		echo "║ 6) Submenu 06    ║ ║"
		echo "║                  ║ ║" 
		echo "║ 0) Voltar        ║═╝"
		echo "╚══════════════════╝  "
		echo -n "> "
		read opcao1
		case "$opcao1" in
			5)	menu05
				;;
			6)	menu06
				;;          
			0)  break
		esac
	done
}



menu(){
	opcao=99
	while true; do
		clear
		echo "╔══════════════════╗"
		echo "║ Choose an option ║"
		echo "║══════════════════║"
		echo "║ 1) Menu 01       ║"
		echo "║ 2) Menu 02       ║"
		echo "║ 3) Menu 03       ║"
		echo "║ 4) Menu 04       ║"
		echo "║ 0) Exit          ║"
		echo "╚══════════════════╝"
		echo -n "> "
		read opcao
		case "$opcao" in
			1)	submenu
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
