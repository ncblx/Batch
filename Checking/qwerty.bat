Echo Off
SetLocal enabledelayedexpansion
                 
SET WorkDir=D:\Project\chk_time
SET OutDir=%WorkDir%\1\
SET LogFile=%WorkDir%\LogFile.log
 
CD /D %WorkDir%
 
REM реальное время
SET Time_r=%TIME%
SET tr=!Time_r:~0,5!
 
SET Real_hh=!tr:~0,2!
SET Real_mm=!tr:~3,2!
 
IF Real_hh lss 10 SET Real_hh=!tr:~0,1!
IF Real_mm lss 10 SET Real_mm=!tr:~4,1!
 
Echo -------------------------------------------------- START - %TIME% ------------------------------------------------ >> %LogFile%
 
FOR /F "delims=" %%z IN ('dir /O-D *.ED /b') do ( 
 
SET lm=%%~tz
REM Echo lm=!lm!
 
SET File_hh=!lm:~11,2!
SET File_mm=!lm:~14,2!
 
IF !File_hh! lss 10 SET File_hh=!lm:~12,1!
IF !File_mm! lss 10 SET File_mm=!lm:~15,1!
 
SET /A Diff = "60*(Real_hh-File_hh)+Real_mm-File_mm"
 
IF !Diff! GEQ 30 (
Echo Файл:%%z Дата/время файла:%%~tz - Текущее время:%Real_hh%:%Real_mm% Файл завис !Diff! минут назад.
Echo Файл:%%z Дата/время файла:%%~tz - Текущее время:%Real_hh%:%Real_mm% Файл завис !Diff! минут назад. >> %LogFile%
COPY %%z %OutDir% /Y >> %LogFile%
)
 
REM --- Для тестирования работоспособности ---
REM IF !Diff! GEQ 30 ( echo %%~tz %%z !File_hh!-!File_mm!--%Real_hh%-%Real_mm% D:!Diff! )
)
Echo -------------------------------------------------- END - %TIME% ------------------------------------------------ >> %LogFile%
REM Pause
REM MOVE %%z %OutDir%