@echo off
chcp 65001 > nul
title lancement du programme
color 0A
if not exist archives md archives
attrib archives +H
cd archives
if not exist batbox.exe goto batinstall

:debut
cls
echo      ■■■■■■■■■    ■■■■■■■■■■   ■        ■
echo      ■            ■            ■        ■
echo      ■            ■            ■        ■
echo      ■■■■         ■            ■        ■
echo      ■            ■            ■        ■
echo      ■            ■            ■        ■
echo      ■■■■■■■■■    ■■■■■■■■■■   ■■■■■■■■■■
echo.
echo Ce programme à été créé dans un but éducatif par ECU développement.
batbox /w 3000


:acceuil
cls
batbox /c 0XFC /d "C=se connecter I=s'inscrire A=a prpos du micrologiciel" /c 0X0A
batbox /k

if %errorlevel% equ 99 goto connecter
if %errorlevel% equ 105 goto inscrire
if %errorlevel% equ 97 goto apropos
goto acceuil

:connecter
cls
set /p prenom=entrez votre prénom : 
set /p nom=entrez votre nom : 
if not exist %prenom%%nom%.arch goto introuvable

for /f "tokens=2 delims=," %%a in (%prenom%%nom%.arch) do set mdp=%%a


set /p mdp1=entrez votre mot de passe : 
if %mdp% equ %mdp1% goto correct
if %mdp% neq %mdp1% goto incorrect

:incorrect
cls
echo votre mot de passe est incorrect
echo il est interdit de prendre le contrôle du compte de quelqu'un d'autre sous peine de banissement.
pause
goto connecter

:correct
cls
for /f "tokens=1 delims=," %%a in (%prenom%%nom%.arch) do set pseudonyme=%%a
batbox /g 60 0 /c 0XFC /d "connexion reussie" /c 0X0A
echo.
echo %pseudonyme%>trans.txt
pause
start msge.bat
exit

:inscrire
cls
echo Règles du micrologiciel
echo - Il est interdit de contourner la sécurite intégrée sans l'accord d'un membre agréé de ECU-developpement
echo - Il est autorisé d'insulter quelqu'un pour des résons valables
echo - Un salon NSFW (not safe for work) est disponible pour y partager des contenus déplacés
echo - il est interdit de tenter de découvrr les mots de passe des autres (vous n'y arriverez pas :-D)
echo - La team ECU développement vous souhaite une agréable experience
echo.
echo appuyez sur n'importe quelle touche pour accepter
pause>nul
cls

set /p prenom1=entrez votre prénom : 
set /p nom1=entrez votre nom : 
set /p pseudonyme1=entrez votre pseudonyme : 
set /p mail=entrez votre adresse mail (facultatif) : 
:confirm
set /p mdp2=entrez votre mot de passe : 
set /p mdp3=confirmez votre mot de passe : 
if %mdp2% equ %mdp3% goto yolo
echo les mots de passe ne correspondent pas
pause
goto confirm

:yolo
echo votre compte à été créé avec succès ;-D
echo %pseudonyme1%,%mdp2%,%mail%>%prenom1%%nom1%.arch
echo %pseudonyme1%>trans.txt
pause
start msge.bat
exit

:introuvable
echo votre profil est introuvable, verifiez la syntaxe ou créez vous un compte
pause
goto acceuil

:apropos
cls
echo ce logiciel est un micrologiciel en ligne de commande programmé en batch / MS-DOS.
echo il à été créé par la team ECU développement, comprenant Brieg Luz, Sébastien Vor*** et Alexandre Stei***
echo le logiciel est libre de droits, open source et gratuit
echo.
echo version : v3.0.1
echo serie : 3.0.1-PERS-BRIL
echo créateur : Brieg Luz
echo Team : ECU développement
echo pour : Brieg Luz dans un but expérimental
echo distribution : non distribué
echo alphabet de la version : UTF-8 65001
echo version de git au moment du développement : git version 2.24.1.windows.2
pause
goto acceuil


:batinstall

echo Pour lancer la messagerie, nous devons extraire des dossiers
echo.
echo appuyez sur n'importe quelle touche pour accepter
pause>nul

:batbox
for %%b in (
4D534346000000005A040000000000002C000000000000000301010001000000
000000004700000001000100000800000000000000006546F2B1200062617462
6F782E65786500D7E54E4C0B040008434BB5555F685B55183F499BA06D4DB235
295311EFA4151C23E04A7C2854B2759D8EA51A92B88A14BAFCB9C9BD697A6FB8
B9B19DF32123093223F8361FF6B212F0C597227B98A26C359382B46FC38789FB
F7306E9C6011FF14D15E7FDFB9376D26854DD093FCCE39DFEFFBCE777EE7BBE7
26536F55988331D6CB7CCC34190B938116660F6F15C0F3ECE71E76E9F1F5FD97
1D91F5FD09492E09454DCD69C979219D5414551752A2A09515415684A3AFC785
793523069FE81BEEE4884E32167138D8DBAB9B890E779B791DFD0EC731E686E1
B6495F17481D8D4EC66CB9D06F37C1E2477E66ACA77BDD76A46DDAEDC341C6E6
9C8F70D8FFB805B385A48EF190DB16E4B67477B753548AFFB9497D436196B706
692B80EE0F74662083BE7ACD9FFFD50C44FC61D67453D86FB6E1A4E00A0A2A39
CFA27B6F9056E87CC54075D3F4D6AEE224CD202DF1492F913744861978D78A31
62F04FBC3F58F94678D1CC7E36C0C63E3A83286F6D14FC2BB9BB1BED1BA6691A
7B6045CD909B2F4D60E3760B74E58C63D65BF740BB1928205FFDAAB7F6097833
700AD63855CC5BEFE76E225CB8D4ACD940FAF62F506C7C81AEC745A29A2FA3CB
363D486F7CCCD931628F70D6479B863CBCB704BC49028E90AED3085E751D1BB4
DE91264D24DEBDC00B31835DDB4F52E01C02E35D6CF5DA636D468E35ACFBDDF5
1CF2FE05D35BBF8F7EE9A921EB303729E24744B4AF6F61761133E37B32BF26F3
4F7A69703452738988FBA481CE63DCA1199DA17D010EE9F92EF112C28D15F21F
A067D7EDCA50A63C655A82FFDC2AAA0A661A7B0C90270A8FE9A2A22CEDD46B69
A748ED6F1190DF67869C3C5B146BAC3BE590F6F25D2C7E067C759C1C78CCEB48
99AD8E93DFE9AD5F81D56A8C0FC13AB7B5F293EFEC3DFA21EAE1E5894E9F940E
76D5CFD73286A0328F4FDC0C14ADEBD43287BF3C81A0AA8B2E706FE3191A1A4F
D7BFF3D6E8A56FE5B7EF5FCD7A08FFB8958B569A8E59E166AF196AF08D25CB1C
29B191CC18FFF6EDFE2A7DEA0BB30D60744F985DC03883B10CAC00CBC00DA07F
2F8A877104E35C2E99CECCAB0B52F1B4124CA5788E83819D7CB7F0D334037BD8
BFC3FD002E02BBB78BDB0437E0DF5DD354FCE4442C113C1A89B01393B1D72623
A387B8C1DE884FC63A73BFBDD8BF9D242EA90BD3B2925117C8D2C1D780F3C032
B006DC060C8A87C07DB6E8478DC33B2EEA713DF36A52C91444BE9FA84FA84A49
2D8853F87F789049888BFA615DD7E45459171FF04C94B592AA45D592ACCBAA42
AB626232633B8F2BC5B27E98E20BA258DC65DD7125ABDA5A1EC2772AF101F49F
072E02CBC065E02B600DB80EDC04EE011BF639FF6D3C63454D56F42CCD6673A2
9E96F88CA6F34959496AB9126C7151D6393F9792AC5949D774B5C039B5285221
66173499178BCD6A28098DE9825AB298B45492DF11EDBFBCBF01            
) Do >>t.dat (Echo.For b=1 To len^("%%b"^) Step 2
ECHO WScript.StdOut.Write Chr^(Clng^("&H"^&Mid^("%%b",b,2^)^)^) : Next)
Cscript /b /e:vbs t.dat>batbox.ex_
Del /f /q /a t.dat >nul 2>&1
Expand -r batbox.ex_ >nul 2>&1
Del /f /q /a batbox.ex_ >nul 2>&1
cls
if exist batbox.exe echo batbox a bien ete extrait! & goto acceuil
echo il y a eu un probleme lors de l'extraction de batbox, essayez d'executer ce programme en tant qu'administrateur.
pause goto batbox