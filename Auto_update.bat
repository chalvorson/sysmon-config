@echo on
cd C:\ProgramData\sysmon\
@powershell Invoke-WebRequest -Uri "https://raw.githubusercontent.com/chalvorson/sysmon-config/master/sysmonconfig-export.xml" -OutFile "C:\ProgramData\sysmon\sysmonconfig-export.xml"
timeout 30
sysmon64 -c sysmonconfig-export.xml
exit
