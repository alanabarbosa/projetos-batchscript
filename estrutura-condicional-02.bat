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

echo Ol�, %username%, seja bem vindo(a)
echo Hoje � %date%
echo S�o %time:~0,5%
echo.

cd C:\Users\%username%\Downloads

if exist "C:\Users\%username%\Downloads" ( echo O diret�rio existe ) else ( echo O diret�rio n�o existe )

pause > nul
