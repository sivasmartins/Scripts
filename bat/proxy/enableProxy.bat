@echo off
::
:: enableProxy.bat
:: 
:: Habilitar o proxy no Windows
::
:: Modo de usar: 
::   
::  enableProxy.bat
:: 
:: Autor: Sivaldo Martins
::
REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v proxyserver /t REG_SZ /d "10.10.10.10:8080" /f
REG ADD "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v ProxyEnable /t REG_DWORD /d 0x00000001 /f