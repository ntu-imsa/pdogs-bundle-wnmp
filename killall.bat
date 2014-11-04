@echo off
echo [%date% %time%] stopping all web services

taskkill /f /im nginx.exe 1>nul 2>nul
ping -n 2 localhost 1>nul 2>nul

taskkill /f /im php-cgi.exe 1>nul 2>nul
ping -n 2 localhost 1>nul 2>nul

echo [%date% %time%] all web services has been stopped
pause
