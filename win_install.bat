@echo off
echo  Ensure that you have python 2.7 installed in the directory "C:\Python27\"
echo  Copping files
mkdir C:\logmein
copy logmein C:\logmein\
attrib +h C:\logmein
cd C:\logmein\
echo Enter your details :-
set /P input=Username : 
echo %input% > C:\logmein\logmein.data
set /P input=Password : 
echo %input% >> C:\logmein\logmein.data
set /P input=Gateway of the host (Example \"192.168.217.111\") :  
echo %input% >> C:\logmein\logmein.data
set /P input=Port number of the host (Example \"1000\") (mostly 80/443) :  
echo %input% >> C:\logmein\logmein.data
echo @echo off > C:\logmein\logger.bat
echo timeout 5 >> C:\logmein\logger.bat
echo C:\Python27\python.exe C:\logmein\logmein >> C:\logmein\logger.bat
powershell "$s=(New-Object -COM WScript.Shell).CreateShortcut('%userprofile%\Start Menu\Programs\Startup\logger.lnk');$s.TargetPath='C:\logmein\logger.bat';$s.Save()"
pause