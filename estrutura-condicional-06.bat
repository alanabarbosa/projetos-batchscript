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

:interface
cls
echo:
echo 1) Listar todos os processo
echo 2) Listar processo especifico
echo 3) Parar um processo
echo 4) Sair
echo.
choice /c "1234" /n /m "Digite a opção: "
goto %errorlevel%

:1
tasklist
echo.
echo Pressione alguma tecla para proseguir...
pause > nul
goto interface

:2
echo.
set /p process="Digite o nome do processo> "

tasklist /fi "imagename eq %process%" | find "%process%"
if %errorlevel% ==  0 (
	echo.
	echo O processo %process% está em execução
	echo.
	echo Pressione alguma tecla para proseguir...
) else (
	echo.
	echo O processo %process% não está em execução
	echo.
	echo Pressione alguma tecla para proseguir...
)

pause > nul
echo.
echo Pressione alguma tecla para proseguir...
goto interface

:3
set /p process="Digite o nome do processo> "
taskkill /f /t /fi "imagename eq %process%"
echo.
echo Pressione alguma tecla para proseguir...
pause > nul
goto interface

:4
exit

pause > nul
