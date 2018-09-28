@SetLocal ENABLEDELAYEDEXPANSION
@CALL setEnv.bat

SET evsimulatorLog=./log/TestCaseResponseData.txt
SET evsimulatorDataInput=./data/EV_MSG_WEB_NLO_DELIVERY_03.xml
SET evsimulatorURL=https://%HOSTNAME%/evmsggw/evmsggw03/GWEVNaviInfoServlet
SET evsimulatorEncrp=ON

@del *.log

"%JAVA_HOME%/bin/java" -classpath %CLASSPATH% com.gevitc.evit.ev01.evsimulator.EvSimulator %evsimulatorURL% %evsimulatorDataInput% %evsimulatorEncrp% 2>&1 1>%evsimulatorLog% 

@notepad %evsimulatorLog%

@EndLocal

pause