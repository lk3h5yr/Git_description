
SET JAVA_HOME=C:\Program Files\Java\jdk1.8.0_171
SET HOSTNAME=127.0.0.1
SET PORT=8080

SET evsimulatorLog=./test.txt
SET evsimulatorDataInput=NEWIVI_NAVI_RESTORE.xml
SET evsimulatorURL=http://%HOSTNAME%:%PORT%/evmsggw/GWNewIVINaviStoreServlet
SET evsimulatorEncrp=OFF
SET data=lib/c3p0-0.9.1.2.jar;lib/cglib.jar;lib/commons-beanutils.jar;lib/commons-collections.jar;lib/commons-digester.jar;lib/commons-fileupload-1.0.jar;lib/commons-lang-2.1.jar;lib/commons-logging.jar;lib/commons-validator-1.3.1.jar;lib/dom4j.jar;lib/hibernate2.jar;lib/jsch-0.1.49.jar;lib/log4j-1.2.8.jar;lib/mysql-connector-java-5.1.13-bin.jar;lib/odmg.jar;lib/ojdbc14.jar;lib/ostermillerutils_1_04_03_for_java_1_4.jar;lib/struts.jar;lib/xstream-1.2.2.jar 


@SET CLASSPATH=.;.\bin\evsimulator.jar;.\bin\MLOSimulator.jar
@for /r ./lib %%g in (*) do @SET CLASSPATH=!CLASSPATH!;lib/%%~nxg

@del *.log

"%JAVA_HOME%/bin/java" -classpath %CLASSPATH% %data% com.gevitc.evit.ev01.evsimulator.EvSimulator %evsimulatorURL% %evsimulatorDataInput% %evsimulatorEncrp% 2>&1 1>%evsimulatorLog% 

@notepad %evsimulatorLog%

@EndLocal

pause