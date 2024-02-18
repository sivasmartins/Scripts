@echo off
::
:: Name: deleteFiles.bat
:: Language: bat script
:: Function : Delete files
::

set PATH="c:\path"
set PERIOD=30

forfiles /p %PATH% /d -%PERRIOD% /c "cmd /c del @path"
pause > NUL
