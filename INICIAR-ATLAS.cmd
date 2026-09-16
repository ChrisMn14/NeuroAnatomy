@echo off
setlocal
set "ATLAS_DIR=%~dp0"
where py >nul 2>nul
if not errorlevel 1 (
  start "NeuroAtlas 3D" "http://127.0.0.1:8765"
  py -m http.server 8765 --directory "%ATLAS_DIR%"
  exit /b
)
where python >nul 2>nul
if not errorlevel 1 (
  start "NeuroAtlas 3D" "http://127.0.0.1:8765"
  python -m http.server 8765 --directory "%ATLAS_DIR%"
  exit /b
)
echo No se encontro Python para iniciar el servidor local.
echo Abra esta carpeta en un servidor web local y visite index.html.
pause
