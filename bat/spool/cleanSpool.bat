@echo off
::
:: cleanSpool.bat
:: 
:: Limpeza das filas de impressao
::
:: Modo de usar: 
::   
::  cleanSpool.bat
:: 
:: Autor: Sivaldo Martins
::

@echo Parando spooler...
net stop spooler

@echo Iniciando a limpeza...
cd c:\windows\system32\spool\PRINTERS
del /f /s *.shd
del /f /s *.spl

@echo Reiniciando o spooler
net start spooler

@echo Concluido!
pause
exit 
