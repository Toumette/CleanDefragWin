@echo off

REM ========================================
REM NETTOYAGE ET DEFRAGMENTATION DES DISQUES
REM ========================================

REM � ex�cuter en administrateur
REM il faut au moins 15% d'espace libre sur chaque disque
REM ne pas d�fragmenter r�guli�rement les disques SSD

REM =========================
REM SECTION NETTOYAGE DISQUES
REM =========================

echo.
echo Patientez... Nettoyage disque en cours...
echo.

REM OPTIONS DE cleanmgr UTILISEES:

REM /D C => nettoie le disque C:
REM /sageset:65535 => affiche la bo�te de dialogue R�glages du nettoyage de disque
REM et cr�e �galement une cl� de Registre pour stocker les param�tres s�lectionn�s
REM c'est-�-dire le profil stockant ces valeurs
REM Le profil N� 65535 est stock�e dans le Registre et permet de sp�cifier des t�ches
REM de nettoyage de disque ex�cuter ensuite

REM /sagerun:65535 => ex�cute les t�ches sp�cifi�es qui sont affect�es � la valeur
REM du profil N�65535 (si l�option /sageset a �t� utilis�e pr�c�demment)
REM Tous les lecteurs de l�ordinateur sont �num�r�s et le profil s�lectionn�
REM est ex�cut� sur chaque lecteur

cleanmgr /D C /sageset:65535 & cleanmgr /D C /sagerun:65535


REM ===============================
REM SECTION DEFRAGMENTATION DISQUES
REM ===============================

REM OPTIONS DE DEFRAG UTILISEES :

REM /C d�fragmente tous les disques
REM /U affiche l'�tat d'avancement
REM /X effectue une consolidation de l�espace libre

echo.
echo Patientez... Defragmentation disque en cours...
echo.
defrag /C /U /X
echo.

REM attend de presser une touche pour fermer la fen�tre :
pause
