@echo off 
::
:: Name: dotNet.bat
:: Language: bat script
:: Function: Show installed dotNet versions
::
@echo ################################
@echo # Versoes dotNET instaladas... #
@echo ################################
dir /b %windir%\Microsoft.Net\framework\v*
@echo ################################
pause > NUL
