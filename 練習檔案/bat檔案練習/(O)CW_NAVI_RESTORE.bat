@SetLocal ENABLEDELAYEDEXPANSION
@CALL setEnv.bat

SET evsimulatorLog=./log/CW_NAVI_RESTORE.txt
SET evsimulatorDataInput=./data/CW_NAVI_RESTORE.xml
SET evsimulatorURL=http://%HOSTNAME%:8080/evmsggw/GWCWNaviStoreServlet
SET evsimulatorEncrp=OFF

@del *.log

"%JAVA_HOME%/bin/java" -classpath %CLASSPATH% com.gevitc.evit.ev01.evsimulator.EvSimulator %evsimulatorURL% %evsimulatorDataInput% %evsimulatorEncrp% 2>&1 1>%evsimulatorLog% 

@notepad %evsimulatorLog%

@EndLocal

pause