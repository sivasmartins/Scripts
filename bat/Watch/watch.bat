@echo off
:: Name: watch.bat
:: Language: bat
:: Function: Linux watch command equivalent
:: 

:loop
  cls
  %*
  timeout /t 5 > nul
  goto loop
