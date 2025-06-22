@echo off
title BatchTimer - By ThatGuyVR
color 0E

:menu
cls
echo ==========================================
echo          BatchTimer - By ThatGuyVR
echo ==========================================
echo.
echo Select an operation:
echo.
echo 1. Start Countdown Timer
echo 2. Exit
echo.
set /p choice=Enter your choice (1-2): 

if "%choice%"=="1" goto timer
if "%choice%"=="2" exit
goto menu

:timer
cls
set /p time=Enter countdown time in seconds: 

:countdown
cls
echo Time remaining: %time% seconds
if %time%==0 goto done
set /a time=%time%-1
timeout /t 1 >nul
goto countdown

:done
echo.
echo Time's up!
pause
goto menu
