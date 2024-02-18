@echo off
::
:: Name: batFileGenerator.bat
:: Language: bat
:: Function: Bat file generator
::
set DESTINO=xxx.bat
(
echo @echo Off 
echo.::
echo.:: Prog: xxx.bat
echo.::
echo.echo TESTE...
echo. 
echo.pause ^> nul
) 1> %DESTINO%
