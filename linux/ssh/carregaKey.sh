#!/bin/bash
#
# carregaKey.sh
#
# Carrega a chave ssh na sessão do bash
# Modo de usar: 
#
# . ./carregaKey.sh
#
# Autor: Sivaldo Martins
#
 
CHAVE=/caminho/id_rsa.minhachave

clear
cd ~
echo "* Agente iniciado..."
ssh-agent > ssh-agent.sh
chmod +x ssh-agent.sh

echo "* Carregando variaveis de ambiente"
. ./ssh-agent.sh

echo "* Chave adicionada..."
ssh-add "$CHAVE"

rm -f ssh-agent.sh

# Manter a chave carregada para todos os shells
# vim ~/.bashrc
#---------------------------------------------------------------------------
#if ps aux | grep ssh-agent | grep ^root | grep -v "grep" > /dev/null 2>&1; 
#then
#  . ~/ssh-agent.sh > /dev/null 2>&1
#fi
#---------------------------------------------------------------------------


