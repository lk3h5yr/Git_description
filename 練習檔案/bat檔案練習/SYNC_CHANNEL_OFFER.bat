@SetLocal ENABLEDELAYEDEXPANSION
@CALL setEnv.bat

SET evsimulatorLog=./log/SYNC_CHANNEL_OFFER.txt
SET evsimulatorDataInput=./data/SYNC_CHANNEL_OFFER.xml
SET evsimulatorURL=http://%HOSTNAME%/evmsggw/GWCWNaviSYNCServlet
SET evsimulatorEncrp=OFF

@del *.log

"%JAVA_HOME%/bin/java" -classpath %CLASSPATH% com.gevitc.evit.ev01.evsimulator.EvSimulator %evsimulatorURL% %evsimulatorDataInput% %evsimulatorEncrp% 2>&1 1>%evsimulatorLog% 

@notepad %evsimulatorLog%

@EndLocal

pause