@echo off
::
:: Name: disableProxy.bat
:: Language: bat
:: Function: Disable internet proxy on Windows
::

REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v proxyserver /t REG_SZ /d "" /f
REG ADD "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v ProxyEnable /t REG_DWORD /d 0x00000000 /f
