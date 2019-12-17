@echo off
chcp 65001 > nul
color 0A
title moniteur de message 2

:debut
cls
for /f %%a in (conv2.arch) do set conv = %%a
echo -%conv%
batbox /w 100
goto debut