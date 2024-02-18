@echo off
::
::
::
::
::

title Relogio Digital
@mode con cols=50 lines=7
color 04

:main
  cls
  echo.
  echo Time: %time%
  echo.
  echo Date:  %date%
  echo. 
  timeout /t 1 /nobreak > NUL
  goto main
