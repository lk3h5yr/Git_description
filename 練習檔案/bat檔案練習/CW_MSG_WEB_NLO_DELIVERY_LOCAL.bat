@SetLocal ENABLEDELAYEDEXPANSION
@CALL setEnv_local.bat

SET evsimulatorLog=./log/TestCaseResponseData.txt
SET evsimulatorDataInput=./data/CW_MSG_WEB_NLO_DELIVERY.xml
SET evsimulatorURL=http://%HOSTNAME%:%PORT%/evmsggw/carwingsWeb/GWCWNaviInfoServlet
SET evsimulatorEncrp=ON

@del *.log

"%JAVA_HOME%/bin/java" -classpath %CLASSPATH% com.gevitc.evit.ev01.evsimulator.EvSimulator %evsimulatorURL% %evsimulatorDataInput%  %evsimulatorEncrp% 2>&1 1>%evsimulatorLog% 

@notepad %evsimulatorLog%

@EndLocal

pause