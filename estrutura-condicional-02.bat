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
chcp 1252 > nul

echo Olá, %username%, seja bem vindo(a)
echo Hoje é %date%
echo São %time:~0,5%
echo.

cd C:\Users\%username%\Downloads

if exist "C:\Users\%username%\Downloads" ( echo O diretório existe ) else ( echo O diretório não existe )

pause > nul
