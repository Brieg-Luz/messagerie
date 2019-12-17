@echo off
chcp 65001 > nul
color 0A
title moniteur de message 1

:debut
cls
type conv1.arch
batbox /w 1000
goto debut