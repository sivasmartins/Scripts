#!/usr/bin/env bash
#
# name: cadastro.sh
# author: sivaldo martins
# year: 2020
#

subMenuCad01 () {
   clear
   echo 'menu cadastro 01'
   read
}

subMenuCad02 () {
   clear
   echo 'menu cadastro 02'
   read
}

menucadastro () {
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
			1)	subMenuCad01
				;;
			2)	subMenuCad02
				;;          
			0)  break
		esac
	done
}

