SET CLASSPATH=.;msgimport.jar;lib\log4j-1.2.8.jar;lib\dom4j.jar;lib\commons-digester.jar;lib\commons-beanutils.jar;lib\commons-collections.jar;lib\commons-lang-2.1.jar;lib\commons-logging.jar;lib\cglib.jar;lib\c3p0-0.9.1.2.jar;lib\hibernate2.jar;lib\mysql-connector-java-5.1.13-bin.jar;lib\ostermillerutils_1_04_03_for_java_1_4.jar;lib\jdom.jar

java -classpath %CLASSPATH% com.gevitc.evit.ev01.msgmaint.batch.DataImport 01

pause