SET JAVA_HOME=C:\Program Files\Java\jdk1.8.0_171
SET HOSTNAME=127.0.0.1
SET PORT=8080

@SET CLASSPATH=.;.\bin\evsimulator.jar;.\bin\MLOSimulator.jar
@for /r ./lib %%g in (*) do @SET CLASSPATH=!CLASSPATH!;lib/%%~nxg