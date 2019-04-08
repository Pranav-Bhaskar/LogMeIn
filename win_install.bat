@echo off
echo  Ensure that you have python 2.7 installed in the directory "C:\Python27\"
echo  Copping files
mkdir "%ProgramFiles%\LogMeIn"
mkdir "%ProgramFiles%\LogMeIn\bin"
copy /y "%~dp0logmein" "%ProgramFiles%\LogMeIn\"
echo Enter your details :-
set /P input=Username : 
echo %input% > "%ProgramFiles%\LogMeIn\logmein.data"
set /P input=Password : 
echo %input% >> "%ProgramFiles%\LogMeIn\logmein.data"
set /P input=Gateway of the host (Example \"192.168.217.111\") :  
echo %input% >> "%ProgramFiles%\LogMeIn\logmein.data"
set /P input=Port number of the host (Example \"1000\") (mostly 80/443) :  
echo %input% >> "%ProgramFiles%\LogMeIn\logmein.data"
echo @echo off > "%ProgramFiles%\LogMeIn\bin\logmein.bat"
echo C:\Python27\python.exe "%ProgramFiles%\LogMeIn\logmein" >> "%ProgramFiles%\LogMeIn\bin\logmein.bat"
powershell "$s=(New-Object -COM WScript.Shell).CreateShortcut('%userprofile%\Start Menu\Programs\Startup\logger.lnk');$s.TargetPath='%ProgramFiles%\LogMeIn\bin\logmein.bat';$s.Save()"
setx path "%path%%ProgramFiles%\LogMeIn\bin\;"
pause