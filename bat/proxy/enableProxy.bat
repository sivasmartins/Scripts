@echo off
::
:: Name: enableProxy.bat
:: Language: bat
:: Enable internet proxy on Windows
::
set PROXY="10.10.10.10:8080"

REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v proxyserver /t REG_SZ /d %PROXY% /f
REG ADD "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v ProxyEnable /t REG_DWORD /d 0x00000001 /f
