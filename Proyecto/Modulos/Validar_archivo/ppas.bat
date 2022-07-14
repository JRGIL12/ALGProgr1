@echo off
SET THEFILE=h:\alg_pr~1\proyecto\modulos\valida~1\valarc~1.exe
echo Linking %THEFILE%
c:\dev-pas\bin\ldw.exe  -s   -b base.$$$ -o h:\alg_pr~1\proyecto\modulos\valida~1\valarc~1.exe link.res
if errorlevel 1 goto linkend
goto end
:asmend
echo An error occured while assembling %THEFILE%
goto end
:linkend
echo An error occured while linking %THEFILE%
:end
