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
echo 1) Listar Documentos
echo 2) Listar Imagens
echo 3) Listar M�sicas
echo 4) Listar V�deos
echo 5) Sair

echo.
choice /c "12345" /n /m "Digite a op��o: "
goto %errorlevel%


:1
cls
echo.
set /a documents_count=0
set "documents=%userprofile%\Documents"
for %%i in ("%documents%\*.*") do set /a documents_count+=1
echo Lista de arquivos em documentos:
echo N�mero de arquivos em documents: %documents_count%
echo ----------------------------------------
dir /b %documents%
echo ----------------------------------------
echo.
pause
goto interface

:2
cls
echo.
set /a images_count=0
set "images=%userprofile%\Documents\Images"
for %%i in ("%images%\*.*") do set /a images_count+=1
echo Lista de imagens:
echo N�mero de arquivos em images: %images_count%
echo ----------------------------------------
dir /b %images%
echo ----------------------------------------
echo.
pause
goto interface

:3
cls
echo.
set /a music_count=0
set "music=%userprofile%\Documents\Music"
for %%i in ("%music%\*.*") do set /a music_count+=1
echo Lista de m�sicas:
echo N�mero de arquivos em m�sicas: %music_count%
echo ----------------------------------------
dir /b %music%
echo ----------------------------------------
echo.
pause
goto interface
:4
cls
echo.
set /a videos_count=0
set "videos=%userprofile%\Documents\Videos"
for %%i in ("%videos%\*.*") do set /a videos_count+=1
echo Lista de videos:
echo N�mero de arquivos em v�deos: %videos_count%
echo ----------------------------------------
dir /b %videos%
echo ----------------------------------------
echo.
pause
goto interface

:5
exit


pause > nul

