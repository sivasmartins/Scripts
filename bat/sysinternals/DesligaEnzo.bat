@echo off
::
:: DesligaEnzo.bat
:: Informar caminho psshutdown.exe (sysinternals)
::

set Caminho="C:\temp\psshutdown.exe"
if exist %Caminho% (
    goto:inicio
) else (
    goto:exit
)

:inicio

set DOMINIO="xXx"
cls
echo. ----------------------
echo.  Escolha
echo. ----------------------
echo.  1 - Desligar
echo.  2 - Reiniciar
echo. 
echo.  0 - SAIR
echo. ----------------------
set /p Comando= Digite uma Opcao : 

if "%Comando%" equ "1" (goto:op1)
if "%Comando%" equ "2" (goto:op2)
if "%Comando%" equ "0" (goto:exit)
if "%Comando%" equ "" (goto:inicio)

:op1
set /p VITIMA= Digite o IP : 
set /p SENHA= Digite a senha :
%Caminho% -s \\%VITIMA% -u %DOMINIO%\administrador -p %SENHA% -t 2
set Comando=
goto:inicio
:op2
set /p VITIMA= Digite o IP : 
set /p SENHA= Digite a senha :
%Caminho% -r \\%VITIMA% -u %DOMINIO%\administrador -p %SENHA% -t 2
set Comando=
goto:inicio

:exit
cls
exit
