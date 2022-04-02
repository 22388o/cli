@echo off
title http upload server

::explorer http://127.0.0.1:8080
npx http-server-upload %USERPROFILE%\Downloads
