@echo off
::
:: Name: updateCmd.bat
:: Language: bat script
:: Function: Run Windows Update by command line
::

goto checkPermissions

:checkPermissions
    net session >nul 2>&1
    if %errorLevel% == 0 (
        goto begin
    ) else (
        echo.
        echo. Failure: Administrative permissions required!
        pause > nul
        exit 0
    )

:begin
wuauclt /detectnow
wuauclt /updatenow
