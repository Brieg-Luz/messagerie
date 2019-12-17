@echo off
chcp 65001 > nul
color 0A
title moniteur de message anonyme

if not exist conva.arch echo début de la conversation>>conva.arch


:debut
cls
type conva.arch
batbox /w 1000
goto debut