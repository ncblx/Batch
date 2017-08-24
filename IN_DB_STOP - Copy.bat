@set @x=0 /* 
@echo off
echo ----------------------------------------
echo I                                      I
echo I           IN DB Downtime             I
echo I               VAS Side               I
echo I        STOP Services and nods        I
echo I                Ver 1.0               I
echo I                                      I
echo ----------------------------------------


Pause
echo on
cd \
taskkill /S 10.20.0.122 /U Administrator /P Pr01iant /fi "IMAGENAME eq SWDP384*" /T
taskkill /S 10.20.0.123 /U Administrator /P num_lock /fi "IMAGENAME eq CBOSS*" /T
taskkill /S 10.20.0.132 /U Administrator /P Pr01iant /fi "IMAGENAME eq SWDP384*" /T
taskkill /S 10.20.0.133 /U Administrator /P Pr01iant /fi "IMAGENAME eq SWDP381*" /T
taskkill /S 10.20.0.134 /U Administrator /P Pr01iant /fi "IMAGENAME eq SWDP370*" /T
taskkill /S 10.20.0.135 /U Administrator /P Pr01iant /fi "IMAGENAME eq SWDP371*" /T
taskkill /S 10.20.0.192 /U Administrator /P Pr01iant /fi "IMAGENAME eq SWDP372*" /T
taskkill /S 10.20.0.193 /U Administrator /P Pr01iant /fi "IMAGENAME eq SWDP373*" /T
taskkill /S 10.20.0.194 /U Administrator /P Pr01iant /fi "IMAGENAME eq SWDP374*" /T
taskkill /S 10.20.0.195 /U Administrator /P Pr01iant /fi "IMAGENAME eq SWDP375*" /T
PsExec.exe \\10.20.0.137 -u Administrator -p Pr01iant -i -d D:\CBOSSasap\Bin\wdconsole.exe -c "stop ccf32000"
PsExec.exe \\10.20.0.139 -u Administrator -p Pr01iant -i -d D:\CBOSSasap\Bin\wdconsole.exe -c "stop scp"
PsExec.exe \\10.20.0.147 -u Administrator -p Pr01iant -i -d D:\CBOSSasap\Bin\wdconsole.exe -c "stop ccafsmpp"
PsExec.exe \\10.20.0.147 -u Administrator -p Pr01iant -i -d D:\CBOSSasap\Bin\wdconsole.exe -c "stop sdp"
PsExec.exe \\10.20.0.185 -u Administrator -p Pr01iant -i -d D:\CBOSSasap\Bin\wdconsole.exe -c "stop scp"
PsExec.exe \\10.20.0.186 -u Administrator -p Pr01iant -i -d D:\CBOSSasap\Bin\wdconsole.exe -c "stop sdp50016"




pause