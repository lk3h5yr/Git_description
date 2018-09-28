@SetLocal ENABLEDELAYEDEXPANSION
@CALL setEnv.bat

SET evsimulatorLog=./log/SNS_TIME_LINE.txt
SET evsimulatorDataInput=./data/SNS_TIME_LINE.xml
SET evsimulatorURL=http://%HOSTNAME%:8080/evmsggw/GWCWNaviSNSServlet
SET evsimulatorEncrp=OFF

@del *.log

"%JAVA_HOME%/bin/java" -classpath %CLASSPATH% com.gevitc.evit.ev01.evsimulator.EvSimulator %evsimulatorURL% %evsimulatorDataInput% %evsimulatorEncrp% 2>&1 1>%evsimulatorLog% 

@notepad %evsimulatorLog%

@EndLocal

pause