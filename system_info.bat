@ECHO OFF
REM  QBFC Project Options Begin
REM  HasVersionInfo: No
REM Companyname: 
REM Productname: 
REM Filedescription: 
REM Copyrights: 
REM Trademarks: 
REM Originalname: 
REM Comments: 
REM Productversion:  0. 0. 0. 0
REM Fileversion:  0. 0. 0. 0
REM Internalname: 
REM ExeType: consoleold
REM Architecture: x64
REM Appicon: 
REM AdministratorManifest: No
REM  QBFC Project Options End
@ECHO ON
@echo off
chcp 1252 > nul

echo Nome do Computador: %COMPUTERNAME%
echo.
===================================
echo Versão do Windows: %OS%
echo.
===================================
echo Informações do Sistema:
systeminfo | find "System Manufacturer"
systeminfo | find "System Model"
systeminfo | find "System Type"
echo.
===================================
echo Arquitetura do Sistema: %PROCESSOR_ARCHITECTURE%
echo.
===================================
echo Informações sobre a CPU:
wmic cpu get caption
echo.

pause > nul

