#!/usr/bin/env bash
#
# name: menu04.sh
# author: sivaldo martins
# year: 2020
#
HEIGHT=15
WIDTH=50
CHOICE_HEIGHT=4
BACKTITLE="Titulo Formulario"
TITLE="Titulo Aqui"
MENU="Escolha a opcao:"

menu01() {
	clear
	echo "Menu 01"
	read;
}

menu02() {
	clear
	echo "Menu 02"
	read;
}

menu03() {
	clear
	echo "Menu 03"
	read;
}

OPTIONS=(1 "Menu 01"
         2 "Menu 02"
         3 "Menu 03"
         0 "Sair"
         )

opcao=99
while true; do
	clear
	opcao=$(dialog --clear \
					--backtitle "$BACKTITLE" \
					--title "$TITLE" \
					--menu "$MENU" \
					$HEIGHT $WIDTH $CHOICE_HEIGHT \
					"${OPTIONS[@]}" \
					2>&1 >/dev/tty)

	case $opcao in
        1)  menu01
            ;;
        2)  menu02
            ;;
        3)  menu03
            ;;
        0)  clear
            exit
            ;;
	esac
done
