@echo off
::
:: Name: menuV1.bat
:: Language: bat
:: Function: Simple menu example
::

:inicio
cls
set varmenu=
echo.----------------------
echo. Escolha
echo.----------------------
echo. 1 - Menu 01
echo. 2 - Menu 02
echo. 3 - Menu 03
echo.
echo. 0 - SAIR
echo.----------------------
set /p varmenu= Digite uma Opcao : 

if "%varmenu%" equ "1" (goto:op1)
if "%varmenu%" equ "2" (goto:op2)
if "%varmenu%" equ "3" (goto:op3)
if "%varmenu%" equ "0" (goto:exit)

:: wrong parameter
goto inicio

:op1
cls
echo.----------------------
echo.MENU 01
echo.----------------------
pause
set Comando=
goto:inicio

:op2
cls
echo.----------------------
echo.MENU 02
echo.----------------------
pause
set Comando=
goto:inicio

:op3
cls
set varsubmenu=
echo.-----------------------------------------
echo. Escolha
echo.-----------------------------------------
echo. 1 - Submenu 01
echo. 2 - Submenu 02
echo. 3 - Submenu 03
echo. 
echo. 0 - SAIR
echo.-----------------------------------------
set /p varsubmenu= Digite uma Opcao : 

if "%varsubmenu%" equ "0" (goto:inicio)
if "%varsubmenu%" equ "1" (goto:imp1)
if "%varsubmenu%" equ "2" (goto:imp2)
if "%varsubmenu%" equ "3" (goto:imp3)

goto op3

:imp1
cls
echo.----------------------
echo.SUBMENU 01
echo.----------------------
pause
goto op3

:imp2
cls
echo.----------------------
echo.SUBMENU 02
echo.----------------------
pause
goto op3

:imp3
cls
echo.----------------------
echo.SUBMENU 03
echo.----------------------
pause
goto op3

:exit
cls
exit
