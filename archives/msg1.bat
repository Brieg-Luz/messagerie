@echo off
chcp 65001 > nul
color 0A
title moniteur de message 1

if not exist conv1.arch echo début de la conversation>>conv1.arch

:debut
cls
type conv1.arch
batbox /w 1000
goto debut