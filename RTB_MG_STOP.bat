@set @x=0 /* 
@echo off
echo ----------------------------------------
echo I                                      I
echo I           RTB MG Downtime            I
echo I               VAS Side               I
echo I        STOP Services and nods        I
echo I                Ver 1.1               I
echo I                                      I
echo ----------------------------------------


Pause
echo on
cd \
taskkill /S 10.20.0.116 /U Administrator /P Pr01iant /fi "IMAGENAME eq watchdogex*" /T
taskkill /S 10.20.0.116 /U Administrator /P Pr01iant /fi "IMAGENAME eq Uniserv2JavaPro*" /T
taskkill /S 10.20.0.116 /U Administrator /P Pr01iant /fi "IMAGENAME eq uni_serv*" /T
taskkill /S 10.20.0.117 /U Administrator /P Pr01iant /fi "IMAGENAME eq watchdogex*" /T
taskkill /S 10.20.0.117 /U Administrator /P Pr01iant /fi "IMAGENAME eq uni_serv*" /T
taskkill /S 10.20.0.123 /U Administrator /P Pr01iant /fi "IMAGENAME eq CBOSS*" /T
taskkill /S 10.20.0.125 /U Administrator /P Pr01iant /fi "IMAGENAME eq watchdogex*" /T
taskkill /S 10.20.0.125 /U Administrator /P Pr01iant /fi "IMAGENAME eq uni_serv*" /T
taskkill /S 10.20.0.128 /U Administrator /P Pr01iant /fi "IMAGENAME eq watchdogex*" /T
taskkill /S 10.20.0.156 /U Administrator /P Pr01iant /fi "IMAGENAME eq CBOSS*" /T
taskkill /S 10.20.0.161 /U Administrator /P Pr01iant /fi "IMAGENAME eq CBOSS*" /T
taskkill /S 10.20.0.162 /U Administrator /P Pr01iant /fi "IMAGENAME eq CBOSS*" /T
taskkill /S 10.20.0.232 /U Administrator /P num_lock /fi "IMAGENAME eq CBOSS*" /T
PsExec.exe \\10.20.0.192 -u Administrator -p Pr01iant -i -d D:\CBOSSasap\Bin\wdconsole.exe -c "stop sdp51000"
PsExec.exe \\10.20.0.193 -u Administrator -p Pr01iant -i -d D:\CBOSSasap\Bin\wdconsole.exe -c "stop sdp51001"
PsExec.exe \\10.20.0.185 -u Administrator -p Pr01iant -i -d D:\CBOSSasap\Bin\wdconsole.exe -c "stop scp"
taskkill /S 10.20.0.235 /U Administrator /P Pr01iant /fi "IMAGENAME eq watchdogex*" /T
taskkill /S 10.20.0.235 /U Administrator /P Pr01iant /fi "IMAGENAME eq uni*" /T
taskkill /S 10.20.0.244 /U Administrator /P Pr01iant /fi "IMAGENAME eq uni_serv*" /T
taskkill /S 10.20.0.244 /U Administrator /P Pr01iant /fi "IMAGENAME eq watchdogex*" /T




pause