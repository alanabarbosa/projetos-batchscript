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


set /p "number1=Digite um numero> "
set /p "number2=Digite outro numero> "

set /a x1=2-(88*6), x2=(44/4) + (10*9), x3=88+((22-5+(22-99)) + (71*2))

color 02
title %date:/=-% %time:~0,5%

set /a adi=%number1%+%number2%
set /a sub=%number1%-%number2%
set /a mul=%number1%*%number2%
set /a div=%number1%/%number2%
set /a mod=%number1%%number2%

echo.
echo Calculos simples
echo %number1%+%number2% = %adi%
echo %number1%-%number2% = %sub%
echo %number1%/%number2% = %div%
echo %number1%*%number2% = %mul%
echo %number1%%number2% = %mod%
echo.

echo Calculo composto:
echo x1: 2-(88*6) = %x1%
echo x2: (44/4) + (10*9) = %x2%
echo x3: 88+((22-5+(22-99)) + (71*2)) = %x3%
echo.

echo Operadores de atribuição:


pause >null
