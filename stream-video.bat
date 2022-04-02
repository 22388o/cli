@echo off
title Stream Video
color 0D

set COMMON=-hide_banner -autoexit -loop 0 -reconnect 1 -reconnect_streamed 1 -reconnect_on_network_error 1 -multiple_requests 1 -reconnect_delay_max 4294 -volume 100

echo ----------------------------------------------------------------------------------
echo  Video controls:
echo    - C           Cycle program
echo    - F           Toggle fullscreen
echo    - LEFT/RIGHT  Seek
echo    - SPACE       Pause
echo    - ESC         Quit
echo ----------------------------------------------------------------------------------

:: play video using "stream-video <url>"
:: -http_proxy http://127.0.0.1:8118
set ARG=%1
if not "%ARG%"=="" ffplay -x 1280 -y 720 -sn %COMMON% %ARG%
