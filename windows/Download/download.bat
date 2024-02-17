@echo off
::
:: Name: download.bat
:: Language: bat script
:: Function: Command line download files
::

set name=download.bat
set file=https://raw.githubusercontent.com/sivasmartins/Scripts/master/windows/download/download.bat

if not exist "C:\temp" (
    mkdir "C:\temp"
)

echo "Iniciado o download..."
c:\Windows\System32\bitsadmin.exe /transfer Download /download /priority normal %file% c:\\temp\%name%

)
