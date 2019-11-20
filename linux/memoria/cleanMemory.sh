#!/bin/bash
#
# limpaMemoria.sh
#
# Limpa os caches alocados mesmo nao estando mais em uso
#
# Modo de usar:
#
#   ./limpaMemoria.sh
#
# Autor: Sivaldo Martins
#

clear
echo "Iniciando limpeza..."
sync; echo 3 > /proc/sys/vm/drop_caches
echo "Concluido!"
