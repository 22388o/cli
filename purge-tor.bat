@echo off

Taskkill /F /IM tor.exe
Taskkill /F /IM obfs4proxy.exe
rd /S /Q %appdata%\tor
