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

set /p number="Digite um n�mero> "
set /p number2="Digite um novo n�mero> "

IF %number% EQU %number2% (
   echo %number% � igual a %number2%
) ELSE (
  echo %number% n�o � igual a %number2%
)

echo.

IF %number% NEQ %number2% (
   echo %number% � diferente a %number2%
) ELSE (
  echo %number% n�o � diferente a %number2%
)

echo.

IF %number% LSS %number2% (
   echo %number% � menor %number2%
) ELSE (
  echo %number% n�o � menor %number2%
)

echo.

IF %number% LEQ %number2% (
   echo %number% � menor ou igual que %number2%
) ELSE (
  echo %number% n�o � menor ou igual que %number2%
)

echo.

IF %number% GTR %number2% (
   echo %number% � maior que %number2%
) ELSE (
  echo %number% n�o � maior que %number2%
)

echo.

IF %number% GEQ %number2% (
   echo %number% � maior ou igual que %number2%
) ELSE (
  echo %number% n�o � maior ou igual que %number2%
)

echo.
pause > nul
