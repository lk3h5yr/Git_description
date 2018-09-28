@SetLocal ENABLEDELAYEDEXPANSION
@CALL setEnv.bat
SET mloSimulatorLog=./log/responseData.txt
SET mloSimulatorDataInput=./data/CW_MLO.xml
SET mloURL=http://%HOSTNAME%:%PORT%/evmsggw/EVGWMLOServlet

@del *.log

"%JAVA_HOME%/bin/java" -classpath %CLASSPATH% com.gevitc.evit.ev01.mlonotificationgw.simulator.MLOSimulator %mloURL% %mloSimulatorDataInput% 2>&1 1>%mloSimulatorLog%
@notepad %mloSimulatorLog%
@EndLocal

pause