@echo off
rem // ----------------------------------------------------------------------------------
rem // Minecraft for Windows 10 Edition - Explorer Launch v1.0
rem // ----------------------------------------------------------------------------------
rem //
rem // This batch file is for opening the Minecraft for Windows 10 directory in Explorer.
rem //
rem // Assumptions made:
rem //
rem //     1. You are running Windows 10
rem //     2. Your Metro app installation directory is the default on Drive C:
rem //     3. The net.exe program is in your environment path (used to check admin rights).
rem //
rem // This file must be run with administrative rights in order to execute.
rem //
rem // Questions can be directed at edward@crowza.com
rem //
cls
echo.
echo Minecraft for Windows 10 Edition - Explorer Launch v1.0
echo.
echo [ Checking for Administrative Rights... ]
c:
net session >nul 2>&1
if %errorLevel% == 0 ( goto adminPassed ) else ( goto adminFailed )

:adminFailed
echo.
echo  FAILED... No Administrative Rights found! You must run this batch
echo  file elevated as an Administrator in order for it to run properly.
echo.
pause
exit

:adminPassed
echo.
echo  PASSED. Administrative Rights found! Opening the folder in Explorer...
cd "\Program Files\WindowsApps"
cd "Microsoft.Minecraft*.*"
start explorer .
exit
