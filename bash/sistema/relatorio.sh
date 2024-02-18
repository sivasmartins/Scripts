#!/usr/bin/env bash
#
# name: relatorio.sh
# author: sivaldo martins
# year: 2020
#

subMenuRel01 () {
   clear
   echo 'menu relatorio 01'
   read
}

subMenuRel02 () {
   clear
   echo 'menu relatorio 02'
   read
}

menurelatorio () {
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
			1)	subMenuRel01
				;;
			2)	subMenuRel02
				;;          
			0)  break
		esac
	done
}
