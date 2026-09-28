#!/bin/bash
set -e
cd "$(dirname "$0")"
python3 -m pip install -r requirements-build.txt
python3 -m PyInstaller --noconfirm --clean --windowed \
  --name ViaProMax \
  --icon assets/app_icon.icns \
  --add-data "assets:assets" \
  ViaProMax.py
cd dist
zip -r ViaProMax-macOS.zip ViaProMax.app
