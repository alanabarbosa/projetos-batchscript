@echo off
chcp 65001 > nul

set /p bg="Digite uma cor de fundo: (0-9 a-f): "
set /p letra="Digite uma cor de letra: (0-9 a-f): " 

color %bg%%letra%

echo A cor de fundo foi alterada com sucesso


pause > nul