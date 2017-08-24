@set @x=0 /* 
@echo off
echo ----------------------------------------
echo I                                      I
echo I           IN DB Downtime             I
echo I               VAS Side               I
echo I       START Services and nods        I
echo I                Ver 1.0               I
echo I                                      I
echo ----------------------------------------


Pause
echo on
cd \
PsExec.exe \\10.20.0.122 -u Administrator -p num_lock -i -d cmd /c D:\CBOSSasap\run\_run_SWDP_384.bat
PsExec.exe \\10.20.0.123 -u Administrator -p num_lock -i -d cmd /c D:\CBOSSasap\Run\start_asap.bat PC304
PsExec.exe \\10.20.0.132 -u Administrator -p Pr01iant -i -d cmd /c D:\CBOSSasap\run\_run_SWDP_380.bat
PsExec.exe \\10.20.0.133 -u Administrator -p Pr01iant -i -d cmd /c D:\CBOSSasap\run\_run_SWDP_381.bat
PsExec.exe \\10.20.0.134 -u Administrator -p Pr01iant -i -d cmd /c D:\CBOSSasap\run\_run_swdp_370.bat
taskkill /S 10.20.0.135 /U Administrator /P Pr01iant /fi "IMAGENAME eq SWDP371*" /T
PsExec.exe \\10.20.0.135 -u Administrator -p Pr01iant -i -d cmd /c D:\CBOSSasap\run\_run_swdp_370.bat
PsExec.exe \\10.20.0.156 -u Administrator -p Pr01iant -i -d cmd /c D:\CBOSSasap\Run\start_asap.bat pc352
PsExec.exe \\10.20.0.161 -u Administrator -p Pr01iant -i -d cmd /cD:\CBOSSasap\Run\start_asap.bat PC353
PsExec.exe \\10.20.0.162 -u Administrator -p Pr01iant -i -d cmd /c D:\CBOSSasap\Run\start_asap.bat PC354
PsExec.exe \\10.20.0.232 -u Administrator -p Pr01iant -i -d cmd /c D:\CBOSSasap\Run\start_asap.bat PC355
PsExec.exe \\10.20.0.192 -u Administrator -p Pr01iant -i -d cmd /c D:\CBOSSasap\run\_run_SWDP_372.bat
PsExec.exe \\10.20.0.193 -u Administrator -p Pr01iant -i -d cmd /c D:\CBOSSasap\run\_run_SWDP_373.bat
PsExec.exe \\10.20.0.194 -u Administrator -p Pr01iant -i -d cmd /c D:\CBOSSasap\run\_run_SWDP_374.bat
PsExec.exe \\10.20.0.195 -u Administrator -p Pr01iant -i -d cmd /c D:\CBOSSasap\Run\_run_SWDP_375.bat
PsExec.exe \\10.20.0.137 -u Administrator -p Pr01iant -i -d D:\CBOSSasap\Bin\wdconsole.exe -c "run ccf32000"
PsExec.exe \\10.20.0.139 -u Administrator -p Pr01iant -i -d D:\CBOSSasap\Bin\wdconsole.exe -c "run scp"
PsExec.exe \\10.20.0.147 -u Administrator -p Pr01iant -i -d D:\CBOSSasap\Bin\wdconsole.exe -c "run ccafsmpp"
PsExec.exe \\10.20.0.147 -u Administrator -p Pr01iant -i -d D:\CBOSSasap\Bin\wdconsole.exe -c "run sdp"
PsExec.exe \\10.20.0.185 -u Administrator -p Pr01iant -i -d D:\CBOSSasap\Bin\wdconsole.exe -c "run scp"
PsExec.exe \\10.20.0.186 -u Administrator -p Pr01iant -i -d D:\CBOSSasap\Bin\wdconsole.exe -c "run sdp50016"




pause