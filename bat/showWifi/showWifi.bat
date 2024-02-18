@echo off
:: 
:: Name: showWifi.bat
:: Language: bat
:: Function: Show Wifi interfaces
::


:loop
 cls
 netsh wlan show interfaces
 timeout /t 5 > nul
 goto loop