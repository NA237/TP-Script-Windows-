:: se programme permet a un utilisateur de planifier heure d^'arrêt de sa marchine 
@echo off 
title PC-OFF 
CD instrument 
type "icone de pc-off.bat"
:: liste des  options du programme 
echo liste des  options du  programme
echo.
echo.
echo 1) fermer maintenant votre session de travail 
echo 2) planifier l'heure d'arret de votre ordinateur
echo 3) annuler l'heure d'arret planifier
echo 4) quitter le programme 
echo.
::cette ligne permet a l'utilisateur  d'entrée son choix dans le programme  et ma varriable que j'ai choisir est arret
set arret=
set /p arret=svp veuiller entrer  votre choix puis valider  avec le bouton entrer 
echo.
echo.
if not `%arret%`==`` set arret=%arret:~0,1%
if %arret%==4 exit
if %arret%==3 goto annuler l'heure d'arret planifier
if %arret%==2 goto planifier l'heure d'arret de votre ordinateur
if %arret%==1 goto fermer maintenant votre session de travail 
   :: la synthase pour fermer maintenant votre session de travail 
   :fermer maintenant votre session de travail 
   logoff
   exit 

   :: la synthase pour planifier l'heure d'arret de votre ordinateur
  :planifier l'heure d'arret de votre ordinateur
   cls 
   type "icone de pc-off.bat"
   echo  bonjour svp  veuillez entrer  l'heure d'arret de votre marchine ( en seconde)
   echo.
   set heure=
   set /p heure= 
   echo votre ordinateur va s'arret dans 
   echo %heure% secondes 
 
   shutdown /s /t %heure%
   
   pause 
   exit

::la synthase pour annuler l'heure d'arret planifier
   :annuler l'heure d'arret planifier
   shutdown /a
   








   







 echo.
 echo.
 exit 
PAUSE 