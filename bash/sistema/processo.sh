#!/usr/bin/env bash
#
# name: processo.sh
# author: sivaldo martins
# year: 2020
#

subMenuProc01 () {
   clear
   echo 'menu processo 01'
   read
}

subMenuProc02 () {
   clear
   echo 'menu processo 02'
   read
}

menuprocesso () {
	opcao1=99
	while true; do
		clear
		echo " ╔═══════════════════╗"
		echo "╔══════════════════╗ ║"
		echo "║ Choose an option ║ ║"
		echo "║══════════════════║ ║"		
		echo "║ 1) Submenu 01    ║ ║"
		echo "║ 2) Submenu 02    ║ ║"
		echo "║                  ║ ║" 
		echo "║ 0) Voltar        ║═╝"
		echo "╚══════════════════╝  "
		echo -n "> "
		read opcao1
		case "$opcao1" in
			1)	subMenuProc01
				;;
			2)	subMenuProc02
				;;          
			0)  break
		esac
	done
}

