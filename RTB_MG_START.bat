@set @x=0 /* 
@echo off
echo ----------------------------------------
echo I                                      I
echo I           RTB MG Downtime            I
echo I               VAS Side               I
echo I       START Services and nods        I
echo I                Ver 1.0               I
echo I                                      I
echo ----------------------------------------


Pause
echo on
cd \
PsExec.exe \\10.20.0.116 -u Administrator -p Pr01iant -i -d D:\SoftPro\WatchDog\watchdogex.exe
PsExec.exe \\10.20.0.116 -u Administrator -p Pr01iant -i -d cmd /c D:\UniServ_116\test.bat
PsExec.exe \\10.20.0.117 -u Administrator -p Pr01iant -i -d D:\SoftPro\WatchDog\watchdogex.exe
PsExec.exe \\10.20.0.123 -u Administrator -p Pr01iant -i -d cmd /c D:\CBOSSasap\Run\start_asap.bat PC304
PsExec.exe \\10.20.0.125 -u Administrator -p Pr01iant -i -d D:\Uniserv\StartUniServ.cmd
PsExec.exe \\10.20.0.128 -u Administrator -p Pr01iant -i -d D:\SoftPro\WatchDog\watchdogex.exe
PsExec.exe \\10.20.0.156 -u Administrator -p Pr01iant -i -d cmd /c D:\CBOSSasap\Run\start_asap.bat pc352
PsExec.exe \\10.20.0.161 -u Administrator -p Pr01iant -i -d cmd /cD:\CBOSSasap\Run\start_asap.bat PC353
PsExec.exe \\10.20.0.162 -u Administrator -p Pr01iant -i -d cmd /c D:\CBOSSasap\Run\start_asap.bat PC354
PsExec.exe \\10.20.0.232 -u Administrator -p num_lock -i -d cmd /c D:\CBOSSasap\Run\start_asap.bat PC355
PsExec.exe \\10.20.0.192 -u Administrator -p Pr01iant -i -d D:\CBOSSasap\Bin\wdconsole.exe -c "run sdp51000"
PsExec.exe \\10.20.0.193 -u Administrator -p Pr01iant -i -d D:\CBOSSasap\Bin\wdconsole.exe -c "run sdp51001"
PsExec.exe \\10.20.0.195 -u Administrator -p Pr01iant -i -d D:\CBOSSasap\Bin\wdconsole.exe -c "run sdp51003"
PsExec.exe \\10.20.0.185 -u Administrator -p Pr01iant -i -d D:\CBOSSasap\Bin\wdconsole.exe -c "run scp"
PsExec.exe \\10.20.0.235 -u Administrator -p Pr01iant -i -d D:\SoftPro\WatchDog\watchdogex.exe
PsExec.exe \\10.20.0.244 -u Administrator -p Pr01iant -i -d cmd /c net start UniServ




pause