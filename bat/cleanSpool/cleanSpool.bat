@echo off
::
:: Name: cleanSpool.bat
:: Language: bat
:: Function: Cleaning Windows spool
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
  @echo Stop spooler...
  net stop spooler

  @echo Start cleaning!
  cd c:\windows\system32\spool\PRINTERS
  del /f /s *.shd 
  del /f /s *.spl 

  @echo Restarting spooler...
  net start spooler
  
  @echo Done!
  pause > NUL









