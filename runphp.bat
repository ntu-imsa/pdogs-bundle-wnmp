@echo off

cd D:\nginx
:main
set cnt=0
set mincnt=2

for /f %%i in ('tasklist /nh^|findstr /i /s /c:"php-cgi.exe"') do set /a cnt+=1

if %cnt% lss %mincnt% (   
	goto youwenti
)else (
	goto meiwenti
)

:youwenti
echo [%date% %time%] Add process now
RunHiddenConsole.exe  php\php-cgi.exe -b 127.0.0.1:9000 -c php\php.ini
RunHiddenConsole.exe  php\php-cgi.exe -b 127.0.0.1:9000 -c php\php.ini
RunHiddenConsole.exe  php\php-cgi.exe -b 127.0.0.1:9000 -c php\php.ini
RunHiddenConsole.exe  php\php-cgi.exe -b 127.0.0.1:9000 -c php\php.ini
RunHiddenConsole.exe  php\php-cgi.exe -b 127.0.0.1:9000 -c php\php.ini
ping 127.1 -n 8 1>nul 2>nul
goto main

:meiwenti
echo [%date% %time%] PHP is running
ping 127.1 -n 8 1>nul 2>nul

goto main