@echo off
chcp 65001 > nul
title choix du salon
color 0A
cd archives

for /f "tokens=1,1,1 delims=," %%a in (trans.txt) do set pseudonyme = %%a
del "trans.txt"

:acceuil
cls
batbox /c 0XFC /d "1, 2 ou 3 = aller au salon 1, 2 ou 3  A = aller au salon anonyme Q = quiter" /c 0X0A /k

if %errorlevel% equ 49 goto salon1
if %errorlevel% equ 50 goto salon2
if %errorlevel% equ 51 goto salon3
if %errorlevel% equ 97 goto salonAnonyme
if %errorlevel% equ 113 cls & echo merci et à bientôt! & pause & exit

:salon1
cls
echo ouverture du salon 1...
batbox/w 1000
echo.
cls
echo [--------------------]
batbox /w 50
cls
echo [■-------------------]
batbox /w 50
cls
echo [■■------------------]
batbox /w 50
cls
echo [■■■-----------------]
batbox /w 50
cls
echo [■■■■----------------]
batbox /w 50
cls
echo [■■■■■---------------]
batbox /w 50
cls
echo [■■■■■■--------------]
batbox /w 50
cls
echo [■■■■■■■-------------]
batbox /w 50
cls
echo [■■■■■■■■------------]
batbox /w 50
cls
echo [■■■■■■■■■-----------]
batbox /w 50
cls
echo [■■■■■■■■■■----------]
batbox /w 50
cls
echo [■■■■■■■■■■■---------]
batbox /w 50
cls
echo [■■■■■■■■■■■■--------]
batbox /w 50
cls
echo [■■■■■■■■■■■■■-------]
batbox /w 50
cls
echo [■■■■■■■■■■■■■■------]
batbox /w 50
cls
echo [■■■■■■■■■■■■■■■-----]
batbox /w 50
cls
echo [■■■■■■■■■■■■■■■■----]
batbox /w 50
cls
echo [■■■■■■■■■■■■■■■■■---]
batbox /w 50
cls
echo [■■■■■■■■■■■■■■■■■■--]
batbox /w 50
cls
echo [■■■■■■■■■■■■■■■■■■■-]
batbox /w 2000
cls
echo [■■■■■■■■■■■■■■■■■■■■]
batbox /w 2000
pause

:debut1
cls
start msg1
batbox /c 0XFC /d "M = envoyer un message Q = quitter O = option /c 0X0A /k
if %errorlevel% equ 109 goto envoyer1
if %errorlevel% equ 113 exit
if %errorlevel% equ 111 goto opt1

:envoyer1
cls
set /p msg = tapez le message à envoyer : 
echo [%pseudonyme% , %date%, %time%] : %msg%>>conv1.arch
goto debut1

:opt1
cls
batbox /c 0XFC /d C = ouvrir les autres consoles de discussion S = supprimer les conversations A = acceuil

if %errorlevel% equ 99 start msg2 & start msg3 & start msgA & goto debut1
if %errorlevel% equ 115 goto suppr1
if %errorlevel% equ 97 goto acceuil

:suppr1
cls
batbox /c 0X0C /d "pour supprimer la coversation, vous devez entrer le code de garde" /c 0X0A
set /p gardkey = entrez le code de garde : 
if %gardkey% neq Arsenic33 echo incorrect & pause & goto debut1
if %gardkey% equ Arsenic33 echo correct & pause & del conv1.arch & goto debut1
goto suppr1








:salon2
cls
echo ouverture du salon 2...
batbox/w 1000
echo.
cls
echo [--------------------]
batbox /w 50
cls
echo [■-------------------]
batbox /w 50
cls
echo [■■------------------]
batbox /w 50
cls
echo [■■■-----------------]
batbox /w 50
cls
echo [■■■■----------------]
batbox /w 50
cls
echo [■■■■■---------------]
batbox /w 50
cls
echo [■■■■■■--------------]
batbox /w 50
cls
echo [■■■■■■■-------------]
batbox /w 50
cls
echo [■■■■■■■■------------]
batbox /w 50
cls
echo [■■■■■■■■■-----------]
batbox /w 50
cls
echo [■■■■■■■■■■----------]
batbox /w 50
cls
echo [■■■■■■■■■■■---------]
batbox /w 50
cls
echo [■■■■■■■■■■■■--------]
batbox /w 50
cls
echo [■■■■■■■■■■■■■-------]
batbox /w 50
cls
echo [■■■■■■■■■■■■■■------]
batbox /w 50
cls
echo [■■■■■■■■■■■■■■■-----]
batbox /w 50
cls
echo [■■■■■■■■■■■■■■■■----]
batbox /w 50
cls
echo [■■■■■■■■■■■■■■■■■---]
batbox /w 50
cls
echo [■■■■■■■■■■■■■■■■■■--]
batbox /w 50
cls
echo [■■■■■■■■■■■■■■■■■■■-]
batbox /w 2000
cls
echo [■■■■■■■■■■■■■■■■■■■■]
batbox /w 2000
pause

:debut2
cls
start msg2
batbox /c 0XFC /d "M = envoyer un message Q = quitter O = option /c 0X0A /k
if %errorlevel% equ 109 goto envoyer2
if %errorlevel% equ 113 acceuil
if %errorlevel% equ 111 goto opt2

:envoyer2
cls
set /p msg = tapez le message à envoyer : 
echo [%pseudonyme% , %date%, %time%] : %msg%>>conv2.arch
goto debut2

:opt2
cls
batbox /c 0XFC /d C = ouvrir les autres consoles de discussion S = supprimer les conversations A = acceuil

if %errorlevel% equ 99 start msg1 & start msg3 & start msgA & goto debut2
if %errorlevel% equ 115 goto suppr2
if %errorlevel% equ 97 goto acceuil

:suppr2
cls
batbox /c 0X0C /d "pour supprimer la coversation, vous devez entrer le code de garde" /c 0X0A
set /p gardkey = entrez le code de garde : 
if %gardkey% neq Arsenic33 echo incorrect & pause & goto debut2
if %gardkey% equ Arsenic33 echo correct & pause & del conv2.arch & goto debut2
goto suppr2








:salon3
cls
echo ouverture du salon 3...
batbox/w 1000
echo.
cls
echo [--------------------]
batbox /w 50
cls
echo [■-------------------]
batbox /w 50
cls
echo [■■------------------]
batbox /w 50
cls
echo [■■■-----------------]
batbox /w 50
cls
echo [■■■■----------------]
batbox /w 50
cls
echo [■■■■■---------------]
batbox /w 50
cls
echo [■■■■■■--------------]
batbox /w 50
cls
echo [■■■■■■■-------------]
batbox /w 50
cls
echo [■■■■■■■■------------]
batbox /w 50
cls
echo [■■■■■■■■■-----------]
batbox /w 50
cls
echo [■■■■■■■■■■----------]
batbox /w 50
cls
echo [■■■■■■■■■■■---------]
batbox /w 50
cls
echo [■■■■■■■■■■■■--------]
batbox /w 50
cls
echo [■■■■■■■■■■■■■-------]
batbox /w 50
cls
echo [■■■■■■■■■■■■■■------]
batbox /w 50
cls
echo [■■■■■■■■■■■■■■■-----]
batbox /w 50
cls
echo [■■■■■■■■■■■■■■■■----]
batbox /w 50
cls
echo [■■■■■■■■■■■■■■■■■---]
batbox /w 50
cls
echo [■■■■■■■■■■■■■■■■■■--]
batbox /w 50
cls
echo [■■■■■■■■■■■■■■■■■■■-]
batbox /w 2000
cls
echo [■■■■■■■■■■■■■■■■■■■■]
batbox /w 2000
pause

:debut3
cls
start msg3
batbox /c 0XFC /d "M = envoyer un message Q = quitter O = option /c 0X0A /k
if %errorlevel% equ 109 goto envoyer3
if %errorlevel% equ 113 exit
if %errorlevel% equ 111 goto opt3

:envoyer1
cls
set /p msg = tapez le message à envoyer : 
echo [%pseudonyme% , %date%, %time%] : %msg%>>conv3.arch
goto debut3

:opt1
cls
batbox /c 0XFC /d C = ouvrir les autres consoles de discussion S = supprimer les conversations A = acceuil

if %errorlevel% equ 99 start msg1 & start msg2 & start msgA & goto debut3
if %errorlevel% equ 115 goto suppr3
if %errorlevel% equ 97 goto acceuil

:suppr3
cls
batbox /c 0X0C /d "pour supprimer la coversation, vous devez entrer le code de garde" /c 0X0A
set /p gardkey = entrez le code de garde : 
if %gardkey% neq Arsenic33 echo incorrect & pause & goto debut3
if %gardkey% equ Arsenic33 echo correct & pause & del conv1.arch & goto debut3
goto suppr3

:salonA
cls
echo ouverture du salon anonyme...
batbox/w 1000
echo.
cls
echo [--------------------]
batbox /w 50
cls
echo [■-------------------]
batbox /w 50
cls
echo [■■------------------]
batbox /w 50
cls
echo [■■■-----------------]
batbox /w 50
cls
echo [■■■■----------------]
batbox /w 50
cls
echo [■■■■■---------------]
batbox /w 50
cls
echo [■■■■■■--------------]
batbox /w 50
cls
echo [■■■■■■■-------------]
batbox /w 50
cls
echo [■■■■■■■■------------]
batbox /w 50
cls
echo [■■■■■■■■■-----------]
batbox /w 50
cls
echo [■■■■■■■■■■----------]
batbox /w 50
cls
echo [■■■■■■■■■■■---------]
batbox /w 50
cls
echo [■■■■■■■■■■■■--------]
batbox /w 50
cls
echo [■■■■■■■■■■■■■-------]
batbox /w 50
cls
echo [■■■■■■■■■■■■■■------]
batbox /w 50
cls
echo [■■■■■■■■■■■■■■■-----]
batbox /w 50
cls
echo [■■■■■■■■■■■■■■■■----]
batbox /w 50
cls
echo [■■■■■■■■■■■■■■■■■---]
batbox /w 50
cls
echo [■■■■■■■■■■■■■■■■■■--]
batbox /w 50
cls
echo [■■■■■■■■■■■■■■■■■■■-]
batbox /w 2000
cls
echo [■■■■■■■■■■■■■■■■■■■■]
batbox /w 2000
pause

:debuta
cls
start msga
batbox /c 0XFC /d "M = envoyer un message Q = quitter O = option /c 0X0A /k
if %errorlevel% equ 109 goto envoyera
if %errorlevel% equ 113 exit
if %errorlevel% equ 111 goto opta

:envoyera
cls
set /p msg = tapez le message à envoyer : 
echo ***%msg%***>>conva
echo [%pseudonyme% , %date%, %time%] : %msg%>>anonyme.arch
goto debuta

:opta
cls
batbox /c 0XFC /d C = ouvrir les autres consoles de discussion S = supprimer les conversations A = acceuil

if %errorlevel% equ 99 start msg1 & start msg2 & start msg3 & goto debuta
if %errorlevel% equ 115 goto suppra
if %errorlevel% equ 97 goto acceuil

:suppr1
cls
batbox /c 0X0C /d "pour supprimer la coversation, vous devez entrer le code de garde" /c 0X0A
set /p gardkey = entrez le code de garde : 
if %gardkey% neq Arsenic33 echo incorrect & pause & goto debuta
if %gardkey% equ Arsenic33 echo correct & pause & del conv1.arch & goto debuta
goto suppra







