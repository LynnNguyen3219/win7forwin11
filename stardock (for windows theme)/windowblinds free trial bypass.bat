@echo off
chcp 65001


echo ░██       ░██ ░████████     ░██     ░██        ░██████                                 ░██                           
echo ░██       ░██ ░██    ░██  ░████   ░████       ░██   ░██                                ░██                           
echo ░██  ░██  ░██ ░██    ░██    ░██     ░██      ░██        ░██░████  ░██████    ░███████  ░██    ░██ ░███████  ░██░████ 
echo ░██ ░████ ░██ ░████████     ░██     ░██      ░██        ░███           ░██  ░██    ░██ ░██   ░██ ░██    ░██ ░███     
echo ░██░██ ░██░██ ░██     ░██   ░██     ░██      ░██        ░██       ░███████  ░██        ░███████  ░█████████ ░██      
echo ░████   ░████ ░██     ░██   ░██     ░██       ░██   ░██ ░██      ░██   ░██  ░██    ░██ ░██   ░██ ░██        ░██      
echo ░███     ░███ ░█████████  ░██████ ░██████      ░██████  ░██       ░█████░██  ░███████  ░██    ░██ ░███████  ░██     
echo by YinTinCan @Github
color 2
timeout /t 1 /nobreak >nul
echo * Hello, This BAT File will reset your WB11 Trial. * (Use this every 30 days..)
echo ----------------------------------------------------
timeout /t 1 /nobreak >nul
CHOICE /C:BE /N /M "[B] Begin [E] Exit"
IF ERRORLEVEL ==2 GOTO EXIT
IF ERRORLEVEL ==1 GOTO BEGIN

:BEGIN
ECHO BEGINNING IN 5 SECONDS
timeout /t 1 /nobreak >nul
echo   Searching...
if exist "C:\Program Files (x86)\Stardock\WindowBlinds\WB11Config.exe" ( echo  Installation of WindowBlinds11 Found!

  timeout /t 1 /nobreak >nul
  echo Checking if Windowblinds11 is closed...
  timeout /t 1 /nobreak >nul
  tasklist | findstr "WB11Config.exe" > nul

   IF ERRORLEVEL 1 ( echo WB11Config.exe is not running, Continuing..
     echo *[1/3] Removing AppData\Local\Stardock...
      rmdir /s /q "C:\Users\%USERNAME%\AppData\Local\Stardock"
       timeout /t 1 /nobreak >nul
     echo *[2/3] Removing ProgramData\Stardock\WindowBlinds
      rmdir /s /q "C:\ProgramData\Stardock\WindowBlinds"
       timeout /t 1 /nobreak >nul
     echo *[3/3] Removing HKEY_CURRENT_USER\Software\Stardock
      reg delete HKCU\Software\Stardock /f
       timeout /t 1 /nobreak >nul
     echo *- Fully reset the Trial! -*
      timeout /t 1 /nobreak >nul
       echo You will need to restart the trial with a Temporary Email.
     timeout /t 1 /nobreak >nul
      echo Opening Temporary Email Page...
       start https://temp-mail.org/en/
     pause
   ) else ( echo Please close WindowBlinds11 Before reseting the trial...
pause )
) else ( echo No Installation of WindowBlinds11 Found, Please download it!
pause )