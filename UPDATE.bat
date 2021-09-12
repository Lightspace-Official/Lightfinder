@echo off
powershell -Command "& {Add-Type -AssemblyName System.Windows.Forms; [System.Windows.Forms.MessageBox]::Show('Updating', 'Updating Lightfinder', 'OK', [System.Windows.Forms.MessageBoxIcon]::Information);}"
del data.txt
del Lightfinder.py
powershell -Command "Invoke-WebRequest https://raw.githubusercontent.com/LightOrg-Official/Lightfinder/dist/data.txt -Outfile data.txt"
powershell -Command "Invoke-Webrequest https://github.com/LightOrg-Official/Lightfinder/raw/dist/Lightfinder.exe -Outfile Lightfinder.exe"
powershell -Command "& {Add-Type -AssemblyName System.Windows.Forms; [System.Windows.Forms.MessageBox]::Show('Lightfinder has been updated to the latest version', 'Updated', 'OK', [System.Windows.Forms.MessageBoxIcon]::Information);}"
powershell -Command "& {Add-Type -AssemblyName System.Windows.Forms; [System.Windows.Forms.MessageBox]::Show('Do you want to run Lightfinder?', '', 'YesNo', [System.Windows.Forms.MessageBoxIcon]::Warning);}" > %TEMP%\out.tmp
set /p OUT=<%TEMP%\out.tmp
if %OUT%==Yes (START Lightfinder.exe)
