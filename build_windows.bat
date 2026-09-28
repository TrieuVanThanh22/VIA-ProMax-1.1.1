@echo off
setlocal
cd /d %~dp0
py -m pip install -r requirements-build.txt
py -m PyInstaller --noconfirm --clean --windowed --onefile ^
  --name ViaProMax ^
  --icon assets\app_icon.ico ^
  --add-data "assets;assets" ^
  ViaProMax.py
endlocal
