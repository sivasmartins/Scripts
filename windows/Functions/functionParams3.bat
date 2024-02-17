@echo off
::
:: Name: functionParams3.bat
:: Language: bat script
:: Function: Example of Functions with parameters
::
SETLOCAL
cls

goto begin
:: --------------------- Functions ---------------------
:function1
  echo.
  echo Function 01
  echo.
  exit /B 0

:function2
  echo.
  echo Function 02
  echo.
  exit /B 0

:function3
  echo.
  echo Function 03
  echo.
  exit /B 0

:function4
  echo.
  echo Function 04
  echo.
  exit /B 0  
:: -------------------------------------------------

:begin
CALL :function1
timeout /t 1 > nul
CALL :function2
timeout /t 1 > nul
CALL :function3
timeout /t 1 > nul
CALL :function4

pause > nul
