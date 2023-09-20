@echo off

set OutputFile=installed_programs.txt

echo Gathering installed programs...
echo ------------------------------ > %OutputFile%
echo Installed Programs >> %OutputFile%
echo ------------------------------ >> %OutputFile%
wmic product get Name,Version >> %OutputFile%
echo. >> %OutputFile%

echo List of installed programs saved to %OutputFile%