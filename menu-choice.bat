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
Mode Con: lines=23 Cols=61
chcp 1252 > nul

color 02

:interface
cls
echo:
echo 1) Calculadora
echo 2) Bloco de Notas
echo 3) Steam
echo 4) Vscode
echo 5) Edge
echo 6) Sair

echo.
choice /c "123456" /n /m "Digite a opção: "
goto %errorlevel%

:1
start calc.exe
goto interface

:2
start notepad.exe
goto interface

:3
start "" "C:\Program Files (x86)\Steam\steam.exe"
goto interface

:4
start "" "C:\Users\alana\AppData\Local\Programs\Microsoft VS Code\Code.exe"
goto interface

:5
start msedge.exe
goto interface

:6
msg /w * "O script sera encerrado!"
exit


