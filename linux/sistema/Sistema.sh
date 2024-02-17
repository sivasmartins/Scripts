#!/usr/bin/env bash
#
# Name: Sistema.sh
# Language: bash
# Function: Example of system menus
#

source cadastro.sh
source processo.sh
source relatorio.sh
source configuracao.sh

menu(){
	opcao=99
	while true; do
		clear
		echo " ╔═══════════════════╗"
		echo " ║ Choose an option  ║"
		echo " ║═══════════════════║"
		echo " ║ 1) Cadastro       ║"
		echo " ║ 2) Processo       ║"
		echo " ║ 3) Relatorio      ║"
		echo " ║ 4) Configuracao   ║"
		echo " ║ 0) Exit           ║"
		echo " ╚═══════════════════╝"
		echo -n "> "
		read opcao
		case "$opcao" in
			1)	menucadastro
				;;
			2)	menuprocesso
				;;          
			3)	menurelatorio
				;;
			4)	menuconfiguracao
				;;			
			0)
				exit 0
		esac
		
	done
}

menu
