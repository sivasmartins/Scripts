@echo off
::
:: Name: listFiles.bat
:: Language: bat script
:: Function : List files
::

set PATH="c:\windows"
set PERIOD=30

forfiles /p %PATH% /d -%PERIOD% /c "cmd /c echo @path @fdate"
pause > NUL
