@echo off
echo Updating Lightfinder
del data.txt
del Lightfinder.py
powershell -Command "Invoke-WebRequest https://raw.githubusercontent.com/JaffLegend/PythonPedia/v1/data.txt -Outfile data.txt"
powershell -Command "Invoke-Webrequest https://raw.githubusercontent.com/JaffLegend/Lightfinder/v1/Lightfinder.py -Outfile Lightfinder.py"
echo Done!
pause
