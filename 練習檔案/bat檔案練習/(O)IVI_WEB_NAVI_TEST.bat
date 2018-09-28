@SetLocal ENABLEDELAYEDEXPANSION
@CALL setEnv.bat

SET evsimulatorLog=./log/IVI_WEB_NAVI.txt
SET evsimulatorDataInput=./data/IVI_NAVI_WEB.xml
SET evsimulatorURL=http://%HOSTNAME%:8080/evmsggw/newiviweb98/GWNewIVINaviInfoServlet
SET evsimulatorEncrp=OFF

@del *.log

"%JAVA_HOME%/bin/java" -classpath %CLASSPATH% com.gevitc.evit.ev01.evsimulator.EvSimulator %evsimulatorURL% %evsimulatorDataInput% %evsimulatorEncrp% 2>&1 1>%evsimulatorLog% 

@notepad %evsimulatorLog%

@EndLocal

pause