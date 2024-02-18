@echo off
::
:: Name: listArray.bat
:: Language: bat script
:: Function: Example of Array interact (useful for backps)
::

set bancos=banco1 banco2 banco3 banco4 banco5 banco6 
(for %%a in (%bancos%) do ( 
   echo %%a
   timeout /t 5 > NUL
))
