@echo off
title DNS Switch
mode con: cols=35 lines=5

set DNSA1=1.1.1.1
set DNSA2=8.8.8.8
set DNSB1=178.22.122.100
set DNSB2=185.51.200.2

:: admin check
net session >nul 2>&1
if not %errorLevel% == 0 (
    echo Run as admin && pause && exit
)

:LOOP
ipconfig /flushdns
cls
for /f "tokens=2 delims=: " %%a in ('echo quit^|nslookup^|find "Address:"') do set DNS=%%a
if %DNS%==%DNSA1% color 08
if %DNS%==%DNSB1% color 0A
echo.
echo   DNS: %DNS%
echo.
echo   Press any key to switch DNS
pause >nul
if %DNS%==%DNSB1% goto DNSa
if %DNS%==%DNSA1% goto DNSb

:DNSa
netsh interface ipv4 set dns "Ethernet" static %DNSA1%
netsh interface ipv4 add dns "Ethernet" %DNSA2% index=2
goto LOOP

:DNSb
netsh interface ipv4 set dns "Ethernet" static %DNSB1%
netsh interface ipv4 add dns "Ethernet" %DNSB2% index=2
goto LOOP
