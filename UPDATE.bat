
echo 'Updating PythonPedia'
del data.txt
pause
powershell -Command "Invoke-WebRequest https://raw.githubusercontent.com/JaffLegend/PythonPedia/v1/data.txt -Outfile data.txt"
echo "Done!"
pause
