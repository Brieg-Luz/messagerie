@echo off
chcp 65001 > nul
color 0A
title moniteur de message 3

if not exist conv3.arch echo début de la conversation>>conv3.arch

:debut
cls
type conv3.arch
batbox /w 1000
goto debut