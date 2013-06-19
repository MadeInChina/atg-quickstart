1.You need create new user for oracle at first time
   use createUser.sql
then create table for das dcs dss dps.(ATG\DAS\sql\install\oracle\das_ddl.sql)


2.config a jboss server.(copy default server as new one called atg-quickstart)
  copy ojdbc14.jar to Jboss\server\atg-quickstart\lib
  copy atg-oracle-ds.xml to Jboss\server\atg-quickstart\deploy
  
3.config a dynamo server
  %ATG_HOME%\home\bin\ makeDynamoServer atg-quickstart 9010 9011 
  atg-quickstart is under %ATG_HOME%\home\servers
  
4.Using runAssembler to package project
 %ATG_HOME%\home\bin>runAssembler.bat atg-quickstart.ear -m atg-quickstart
 then copy atg-quickstart.ear to Jboss\server\atg-quickstart\deploy

5.%JBOSS_HOME%/bin run.bat -b 0.0.0.0 -c atg-quickstart -Datg.dynamo.server.name=atg-quickstart

after startup complete,go http://localhost:8080/atg-quickstart/index.jsp you can see the page info.