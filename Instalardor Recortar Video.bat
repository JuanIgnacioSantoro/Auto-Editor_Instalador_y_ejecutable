@echo off
echo ----------------------------------------
powershell -Command "Write-Host 'Instalando Python...' -ForegroundColor White -Background Red"
echo ----------------------------------------
winget install Python.Python.3.13

echo ----------------------------------------
powershell -Command "Write-Host 'Chaequeando version de Python...' -ForegroundColor White -Background Red"
echo ----------------------------------------
python --version
pip --version

echo ----------------------------------------
powershell -Command "Write-Host 'Chaequeando version de PIP y actualizando...' -ForegroundColor White -Background Red"
echo ----------------------------------------
python -m pip install --upgrade pip

echo ----------------------------------------
powershell -Command "Write-Host 'Instalando auto-editor...' -ForegroundColor White -Background Red"
echo ----------------------------------------
pip install auto-editor

echo ----------------------------------------
powershell -Command "Write-Host 'Chaequeando version de auto-editor...' -ForegroundColor White -Background Red"
echo ----------------------------------------
auto-editor --version

echo \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
powershell -Command "Write-Host 'Todo listo.' -ForegroundColor White -Background Green"
echo \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

set TARGET=C:\Test.mp4
set SHORTCUT=C:\Test.lnk

powershell -Command "$WScriptShell = New-Object -ComObject WScript.Shell; $Shortcut = $WScriptShell.CreateShortcut('%SHORTCUT%'); $Shortcut.TargetPath = '%TARGET%'; $Shortcut.Save()"
pause >nul