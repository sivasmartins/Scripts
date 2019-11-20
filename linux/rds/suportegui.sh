#!/bin/bash

TELA="1365x690"
proxima='usuario'

while : ; do
	case "$proxima" in

		usuario)
			anterior='usuario'
			proxima='senha'
			LOGIN=$(dialog  --stdout \
							--cancel-label 'Cancelar' \
							--inputbox "Digite o login[default: administrador]:" \
							0 50 )
			if [ -z "$LOGIN" ]; then
				LOGIN='administrador'
			fi
			;;

		senha)
			anterior='usuario'
			proxima='senhanula'
			PASSWORD=$(dialog  --stdout \
								--insecure \
								--cancel-label 'Cancelar' \
								--passwordbox "Digite a senha:" \
								0 0 )
			;;					
		senhanula)	#passo extra: voltar					
			anterior='senha'
			if [ -z "$PASSWORD" ]; then
				proxima='senha'
			else
				proxima='endereco'
			fi							
			;;
				
		endereco)
			anterior='senha'
			proxima='dominio'
			HOST=$(dialog	--stdout \
							--cancel-label 'Cancelar' \
							--inputbox "Digite o host[default: localhost]:" \
							0 50 )
			if [ -z "$HOST" ]; then
				HOST='localhost'
			fi
			;;
		dominio)
			anterior='endereco'
			proxima='porta'
			DOMINIO=$(dialog	--stdout \
								--cancel-label 'Cancelar' \
								--inputbox "Digite o dominio:[ENTER para nenhum]" \
								0 50 )
			;;			
		porta)
			anterior='dominio'
			proxima='programa'
			PORT=$(dialog   --stdout \
							--cancel-label 'Cancelar' \
							--inputbox "Digite a porta[default: 3389]:" \
							0 50 )
			if [ -z "$PORT" ]; then
				PORT=3389
			fi
			;;		    

		programa)
			anterior='porta'
			proxima='fim'
			SOFT=$(dialog 	--stdout \
							--cancel-label 'Cancelar' \
							--backtitle "Programa" \
							--menu "Programa" \
							0 0 0 \
							rdesktop 'rDesktop' \
							xfreerdp 'xFreeRDP' )
			;;

		fim)
			break
			;;
		*)
			exit
	esac

retorno=$?

[ $retorno -eq 1 ] && proxima="$anterior"
[ $retorno -eq 255 ] && break
	
done

if [ "$SOFT" = "rdesktop" ]; then
	rm -f ~/.rdesktop/licence.`hostname`
	rdesktop -u "$LOGIN" -p "$PASSWORD" -d "$DOMINIO" -k pt-br -a 16 -g "$TELA" "$HOST":"$PORT" >> /dev/null &2>1 &
else
	xfreerdp -u "$LOGIN" -p "$PASSWORD" -d "$DOMINIO" -z -k pt-br --plugin cliprdr -g "$TELA" "$HOST" -t "$PORT" >> /dev/null &2>1 &
fi
clear
