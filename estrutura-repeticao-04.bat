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
setlocal EnableDelayedExpansion

:inicio
echo.
set /p number1="Digite um numero>  "

if !number1! LEQ 0 (
   echo Por favor, digite um número maior que zero!!!
   goto inicio
)
set /p operator="Digite o operador (+, -, *, /)>  "
echo.

for /l %%n in (1,1,10) do (
    set /a result=!number1!%operator%%%n!
    echo !number1! %operator% %%n  = !result!
)
goto inicio
echo.
pause > nul

