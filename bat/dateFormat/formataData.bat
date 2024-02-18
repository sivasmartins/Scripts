@echo off
::
:: Name: formataData.bat
:: Language: bat script
:: Functions: Format dates (useful for backup files)
::

cls
set arquivo=BACKUP_%date:~-4%%date:~3,2%%date:~0,2%_%time:~0,2%%time:~3,2%
echo.
echo %arquivo%
pause > NUL
