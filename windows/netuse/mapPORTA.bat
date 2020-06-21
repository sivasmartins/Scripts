@echo off
::
:: mapPORTA.bat
:: Mapear impressora de etiquetas ou unidades
::

:inicio
set DOMINIO="xXx"
cls
echo. ----------------------
echo.  Escolha
echo. ----------------------
echo.  1 - Listar
echo.  2 - Apagar
echo.  3 - Mapear
echo. 
echo.  0 - SAIR
echo. ----------------------
set /p Comando= Digite uma Opcao : 

if "%Comando%" equ "1" (goto:op1)
if "%Comando%" equ "2" (goto:op2)
if "%Comando%" equ "3" (goto:op3)
if "%Comando%" equ "0" (goto:exit)
if "%Comando%" equ "" (goto:inicio)

:op1
net use
pause
set Comando=
goto:inicio
:op2
set /p PORTA= Digite a porta (ex.: lpt1):
net use %PORTA% /delete
pause
set Comando=
goto:inicio
:op3
set /p PORTA= Digite a porta (ex.: lpt1):
set /p CAMINHO= Digite o caminho da impressora (ex.: \\srv-printer\imp):
net use %PORTA% %CAMINHO% /persistent:yes
pause
set Comando=
goto:inicio

:exit
cls
exit
