#!/bin/sh

TELA="1365x690"

clear
echo -n "Iniciando sessao remota..."
echo
echo
echo -n "Usuario [ENTER para administrador]: "
read USER

if [ -z $USER ]; then
	USER="administrador"
fi

while [ -z $PASS ]; do
	echo -n "Senha.............................: "
	read PASS
done

echo -n "Dominio [ENTER para nada].........: "
read DOMI

echo -n "Endereco [ENTER para localhost]...: "
read HOST
if [ -z $HOST ]; then
        HOST="localhost"
else
        HOST="$HOST"
fi

echo -n "Porta [ENTER para 3389]...........: "
read PORT

if [ -z $PORT ]; then
	PORT="3389"
fi

echo "1) rDesktop"
echo "2) xFreerdp[Default]"
echo -n "> "
read SOFT

if [ -z $SOFT ]; then
        SOFT="1"
fi

if [ "$SOFT" = 1  ]; then
	rm -f ~/.rdesktop/licence.heavymetal
	rdesktop -u "$USER" -p "$PASS" -d "$DOMI" -k pt-br -a 16 -g "$TELA" "$HOST:$PORT" >> /dev/null &2>1 &
else
	
	xfreerdp -u "$USER" -p "$PASS" -d "$DOMI" -z -k pt-br --plugin cliprdr -g "$TELA" "$HOST" -t "$PORT" >> /dev/null &2>1 &
fi
