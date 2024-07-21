@echo off
setlocal

:: script path
set PowerShellScriptPath="%~dp0Restart-Driver.ps1"

:: if not ran as admin
openfiles >nul 2>&1
if %errorlevel% NEQ 0 (
    powershell.exe -Command "Start-Process PowerShell -ArgumentList '-NoProfile -ExecutionPolicy Bypass -File ""%PowerShellScriptPath%""' -Verb RunAs"
    exit /b
)

:: if ran as admin
powershell.exe -NoProfile -ExecutionPolicy Bypass -File %PowerShellScriptPath%

endlocal
