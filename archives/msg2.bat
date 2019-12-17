@echo off
chcp 65001 > nul
color 0A
title moniteur de message 2

if not exist conv2.arch echo début de la conversation>>conv2.arch

:debut
cls
type conv2.arch
batbox /w 1000
goto debut