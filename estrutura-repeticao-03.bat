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

set "downloads=%userprofile%\Downloads"
set "documents=%userprofile%\Documents"
set "images=%documents%\Images"
set "music=%documents%\Music"
set "videos=%documents%\Videos"
set "others=%documents%\Outros"

set /a images_count=0
set /a music_count=0
set /a videos_count=0

for %%i in ("%images%\*.*") do set /a images_count+=1
for %%i in ("%music%\*.*") do set /a music_count+=1
for %%i in ("%videos%\*.*") do set /a videos_count+=1

echo Nome do Computador: %username%
echo Número de arquivos em images: %images_count%
echo Número de arquivos em músicas: %music_count%
echo Número de arquivos em vídeos: %videos_count%

pause > nul
