@echo off
@echo off
setlocal enabledelayedexpansion

rem Cambia al directorio donde están los archivos
cd /d "%~dp0"

rem Recorrer recursivamente todos los subdirectorios
for /r %%d in (.) do (
    rem Cambia al directorio actual en la iteración
    cd /d "%%d"

    rem Iterar sobre todos los archivos .ddj.png en el directorio actual
    for %%f in (*.ddj.png) do (
        rem Obtener el nombre del archivo sin la extensión
        set "filename=%%~nf"
        rem Crear el nuevo nombre del archivo eliminando .ddj
        set "newname=!filename:.ddj=!.png"
        rem Renombrar el archivo
        ren "%%f" "!newname!"
    )
)

echo Renombramiento completado.
pause
