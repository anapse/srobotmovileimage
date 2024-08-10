@echo off
setlocal enabledelayedexpansion

rem Cambia al directorio donde están los archivos
cd /d "%~dp0"

rem Recorrer recursivamente todos los subdirectorios y eliminar archivos .ddj.png
for /r %%d in (.) do (
    rem Cambia al directorio actual en la iteración
    cd /d "%%d"

    rem Iterar sobre todos los archivos .ddj.png en el directorio actual
    for %%f in (*.ddj.png) do (
        del "%%f"
    )
)

echo Eliminación completada.
pause
