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
color 02

set /p number="Digite um número> "
set /p number2="Digite um novo número> "

IF %number% EQU %number2% (
   echo %number% é igual a %number2%
) ELSE (
  echo %number% não é igual a %number2%
)

echo.

IF %number% NEQ %number2% (
   echo %number% é diferente a %number2%
) ELSE (
  echo %number% não é diferente a %number2%
)

echo.

IF %number% LSS %number2% (
   echo %number% é menor %number2%
) ELSE (
  echo %number% não é menor %number2%
)

echo.

IF %number% LEQ %number2% (
   echo %number% é menor ou igual que %number2%
) ELSE (
  echo %number% não é menor ou igual que %number2%
)

echo.

IF %number% GTR %number2% (
   echo %number% é maior que %number2%
) ELSE (
  echo %number% não é maior que %number2%
)

echo.

IF %number% GEQ %number2% (
   echo %number% é maior ou igual que %number2%
) ELSE (
  echo %number% não é maior ou igual que %number2%
)

echo.
pause > nul
