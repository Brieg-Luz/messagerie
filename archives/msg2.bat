@echo off
chcp 65001 > nul
color 0A
title moniteur de message 2

:debut
cls
type conv2.arch
batbox /w 1000
goto debut