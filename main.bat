@echo off
:boot
color 0a
cls
title ProTerm v1.0.0
echo ====================
echo    ProTerm v1.0.0
echo ====================
echo.
echo (c) TheAvacad0
echo /help for help

:main

set /p "cmd=>>"
if ["%cmd%"] == ["/help"] (goto :help)
if ["%cmd%"] == ["/quit"] (call :quit)
if ["%cmd%"] == ["/clear"] (goto :clear)
if ["%cmd%"] == ["/lmode"] (color 70)
if ["%cmd%"] == ["/dmode"] (color 0a)
if ["%cmd%"] == ["/pws"] (powershell)
if ["%cmd%"] == ["//winhelp"] (BITSADMIN)
%cmd%

goto :main

:clear
cls
cls
goto :main

:help
echo /help - Displays this menu
echo /quit - exits
echo /clear - clears screen
echo /lmode - light mode
echo /dmode - dark mode
echo /pws - opens powershell
echo //winhelp - windows help
echo.
echo Press any key to exit
pause >nul
goto :main

:quit
cls
exit
