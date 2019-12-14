@echo off

TITLE "NETTOYAGE ET DEFRAGMENTATION DES DISQUES © Henri"

REM à exécuter en administrateur
REM il faut au moins 15% d'espace libre sur chaque disque
REM ne pas défragmenter régulièrement les disques SSD

REM =========================
REM SECTION NETTOYAGE DISQUES
REM =========================

echo.
echo Patientez... Nettoyage disque en cours...
echo.

REM OPTIONS DE cleanmgr UTILISEES:

REM /D C => nettoie le disque C:
REM /sageset:65535 => affiche la boîte de dialogue Réglages du nettoyage de disque
REM et crée également une clé de Registre pour stocker les paramètres sélectionnés
REM c'est-à-dire le profil stockant ces valeurs
REM Le profil N° 65535 est stockée dans le Registre et permet de spécifier des tâches
REM de nettoyage de disque exécuter ensuite

REM /sagerun:65535 => exécute les tâches spécifiées qui sont affectées à la valeur
REM du profil N°65535 (si l’option /sageset a été utilisée précédemment)
REM Tous les lecteurs de l’ordinateur sont énumérés et le profil sélectionné
REM est exécuté sur chaque lecteur

cleanmgr /D C /sageset:65535 & cleanmgr /D C /sagerun:65535


REM ===============================
REM SECTION DEFRAGMENTATION DISQUES
REM ===============================

REM OPTIONS DE DEFRAG UTILISEES :

REM /C défragmente tous les disques
REM /U affiche l'état d'avancement
REM /X effectue une consolidation de l’espace libre

echo.
echo Patientez... Defragmentation disque en cours...
echo.
defrag /C /U /X
echo.

REM attend de presser une touche pour fermer la fenêtre :
pause
