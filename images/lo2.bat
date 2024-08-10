@echo off
@echo off
setlocal enabledelayedexpansion

@echo off
setlocal enabledelayedexpansion

REM Definir el prefijo que se añadirá si es necesario (por ejemplo, 'a')
set "prefix="

REM Navegar al directorio actual
set "rootDir=%cd%"

REM Recorrer todas las subcarpetas
for /r "%rootDir%" %%f in (*.*) do (
    set "filename=%%~nxf"
    set "dirname=%%~dpf"
    
    REM Convertir el nombre del archivo a minúsculas
    set "newname=!filename!"
    set "newname=!newname:-=_!"
    set "newname=!newname: =_!"
    for %%a in (!newname!) do set "newname=%%a"

    REM Verificar si el nuevo nombre es diferente y si el archivo empieza con un carácter no permitido
    if /i not "!filename!"=="!newname!" (
        echo Renombrando "%%f" a "!dirname!!newname!"
        ren "%%f" "!newname!"
    )
)

endlocal
