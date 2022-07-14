@echo off
SET THEFILE=c:\users\user\onedrive\docume~1\dev\algpro~1\proyecto\modulos\proced~1\valida~1.exe
echo Linking %THEFILE%
c:\dev-pas\bin\ldw.exe  -s   -b base.$$$ -o c:\users\user\onedrive\docume~1\dev\algpro~1\proyecto\modulos\proced~1\valida~1.exe link.res
if errorlevel 1 goto linkend
goto end
:asmend
echo An error occured while assembling %THEFILE%
goto end
:linkend
echo An error occured while linking %THEFILE%
:end
