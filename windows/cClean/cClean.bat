@echo off
::
:: Name: cClean.bat
:: Language: .bat
:: Function: cCleaner silent execution
:: Prerequisites: ccleaner.exe
::

@echo "Iniciando limpeza..."
start /wait C:\"Program Files"\CCleaner\CCleaner64.exe /AUTO
@echo "Limpeza concluida..."
timeout /t 10 > NUL
