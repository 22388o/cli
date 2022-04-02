@echo off
title Stream Audio
color 0D

set COMMON=-hide_banner -autoexit -loop 0 -reconnect 1 -reconnect_streamed 1 -reconnect_on_network_error 1 -multiple_requests 1 -reconnect_delay_max 4294 -volume 100

echo ----------------------------------------------------------------------------------
echo  Press CTRL+C twice to stop audio playback
echo ----------------------------------------------------------------------------------

:: play audio using "stream-audio <url>"
set ARG=%1
if not "%ARG%"=="" ffplay -nodisp %COMMON% %ARG%
