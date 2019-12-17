@echo off
chcp 65001 > nul
color 0A
title moniteur de message 1

:debut
cls
for /f %%a in (conv1.arch) do set conv = %%a
echo -%conv%
batbox /w 100
goto debut