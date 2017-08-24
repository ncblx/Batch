Echo on
SetLocal enabledelayedexpansion
                 
SET WorkDir=D:\TEST
SET OutDir=%WorkDir%\NEW\
SET LogFile=%WorkDir%\LogFile.log
 
CD /D %WorkDir%
 
SET Time_r=%TIME%
SET tr=!Time_r:~0,5!
 
SET Real_hh=!tr:~0,2!
SET Real_mm=!tr:~3,2!

IF Real_hh lss 10 SET Real_hh=!tr:~0,1!
IF Real_mm lss 10 SET Real_mm=!tr:~4,1!


FOR /F "delims=" %%z IN ('dir /O-D *.ED /b') do ( 
 
SET lm=%%~tz
 
SET File_hh=!lm:~11,2!
SET File_mm=!lm:~14,2!

echo %lm%
echo %File_hh%
echo %File_mm%


 
IF !File_hh! lss 10 SET File_hh=!lm:~12,1!
IF !File_mm! lss 10 SET File_mm=!lm:~15,1!
 
SET /A Diff = "60*(Real_hh-File_hh)+Real_mm-File_mm"
 
IF !Diff! GEQ 30 (
COPY %%z %OutDir% /Y >> %LogFile%
)
)
