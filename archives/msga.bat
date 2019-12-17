@echo off
chcp 65001 > nul
color 0A
title moniteur de message anonyme

:debut
cls
for /f %%a in (conva.arch) do set conv = %%a
echo -%conv%
batbox /w 100
goto debut