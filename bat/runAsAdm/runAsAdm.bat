@echo off
::
:: Name: runAsAdm.bat
:: Language: bat
:: Function: Check User Permissions
::

goto checkPermissions

:checkPermissions
    net session >nul 2>&1
    if %errorLevel% == 0 (
        goto begin
    ) else (
        echo.
        echo Failure: Administrative Permissions Required.
	pause > NUL
	exit 0
    )
    
:begin
  echo Start program...
  pause > NUL
