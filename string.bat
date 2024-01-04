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
REM ExeType: console
REM Architecture: x64
REM Appicon: 
REM AdministratorManifest: No
REM  QBFC Project Options End
@ECHO ON
@echo off

color 02
mode 50,10
title %date:/=-% %time:~0,5%

set /p "nome=Digite seu nome> "
set /p "sobrenome=Digite seu sobrenome> "
set /p "idade=Digite sua idade> "
set /p "profissao=Digite sua profissao> "

cls

echo.

echo Me chamo %nome% %sobrenome%, tenho %idade% anos e trabalho como %profissao%

pause >null
