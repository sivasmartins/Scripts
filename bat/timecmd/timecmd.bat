@echo off
::
:: Name: timecmd.bat
:: Language: bat
:: Function: Linux time command equivalent
::
:: Use: timecmd "dir c:\windows"
::


cls
set starttime=%time% < nul
cmd /c %1

echo.
echo.
@echo Execution Time:
@echo %starttime%
@echo %time% < nul
