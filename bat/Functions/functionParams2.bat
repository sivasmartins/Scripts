echo off
::
:: Name: functionParams2.bat
:: Language: bat script
:: Function: Example of Functions with parameters
::
cls
SETLOCAL

goto inicio

:backupBanco 
  set BANCO=%~1
  echo Executando BACKUP do banco: %BANCO%
  echo Fim do backup
  echo.
  timeout /t 1 > nul
  exit /b 0

:inicio
CALL :backupBanco banco01
CALL :backupBanco banco02
CALL :backupBanco banco03
CALL :backupBanco banco04
CALL :backupBanco banco05
CALL :backupBanco banco06
CALL :backupBanco banco07
CALL :backupBanco banco08

pause > nul
exit 0
