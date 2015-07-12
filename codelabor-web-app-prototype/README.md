# Project 적용 안내 #

## JVM Options ##

아래와 같은 JVM 옵션 설정이 필요할 수 있다.

* Servlet Container 식별 정보:

        -Dservlet.container.id=tomcat1

* 접속자 IP 정보를 IP v4 형식으로 표현:

        -Djava.net.preferIPv4Stack=true -Djava.net.preferIPv4Addresses=true

### Tomcat에 적용하기 ###

#### 독립 설치된 Tomcat에 적용하기 ####

위 내용을  Tocmat에서 설정할 경우 아래 파일에 등록한다.

    C:\Program Files\Apache Software Foundation\Tomcat 8.0\bin\catalina.bat

#### Eclipse에서 Run As Server로 실행하는 Tomcat에 적용하기  ####

Eclipse의 Run As Server 기능을 사용 시, 독립 설치된  Tomcat을 사용하더라도 설정 파일만큼은  Eclipse의 설정을 따른다.

1. Tomcat v8.0 Server at localhost 탭
2. Overview > Open lanunch configuration
3. Edit Configuration 창
4. Argument 탭
5. VM arguemnts에 아래 내용 추가

    -Djava.net.preferIPv4Stack=true -Djava.net.preferIPv4Addresses=true


## Maven ##

### 3rd Party Artifact ###

기본 Maven Central에서 제공되지 않는 3rd Party Artifact는 아래와 같다.
Local Repository에 저장하거나 mirror로 지정한 내부 Nexus Repository에 upload 해서 사용하도록 한다.

    <dependency>
	    <groupId>org.slf4j</groupId>
	    <artifactId>slf4j-taglib</artifactId>
	    <version>0.1RC</version>
    </dependency>

    <dependency>
	    <groupId>ojdbc</groupId>
	    <artifactId>ojdbc</artifactId>
	    <version>6</version>
	    <scope>provided</scope>
    </dependency>

### Profile ###

Profile 구성은 Taret Environment, Servlet Container, Database의 3가지 분류로 조합된다.

* Environment: local / development / stage / production
* servlet container: tomcat / jetty / weblogic / websphere / jeus / ...
* database:  mysql / postgresql / oracle / ...

#### Local PC 환경에서의 Profile 적용 방법 ####
Windows 환경에서 Tomcat, Oracle XE 사용 시 별도의 Profile 지정 없이 사용 가능하다.

#### CI 환경에서의 Profile 적용 방법 ####
CI 환경에서 Build 할 경우, 아래와 같이 Maven Option을 주어 테스트가 가능하다.

    mvn package -Pdevelopment,tomcat,oracle


## JDBC Driver ##

JDBC Driver는 아래 경로에서 입수 가능하다.

#### Oracle JDBC Driver ####

Oracle XE를 설치한 경우, 아래 경로에서 찾을 수 있다.

	Windows, Oracle XE 설치 기준
    C:\oraclexe\app\oracle\product\11.2.0\server\jdbc\lib\ojdbc6.jar
    
    Ubuntu, Oracle XE 설치 기준
    /u01/app/oracle/product/11.2.0/xe/jdbc/lib/ojdbc6.jar

#### MySQL JDBC Driver ####

MySQL Connector J를 설치한 경우, 아래 경로에서 찾을 수 있다.

	Windows, MySQL Connector J 설치 기준
    C:\Program Files (x86)\MySQL\MySQL Connector J\mysql-connector-java-5.1.34-bin.jar

### Tomcat ###

Tocmat에서 DataSource를 사용하기 위해 아래와 같은 절차가 필요하다.

#### JDBC Driver 설치 ####

JDBC Driver를 설치할 경로는 아래와 같다.

	Windows, Tomcat 별도 설치 기준
    C:\Program Files\Apache Software Foundation\Tomcat 8.0\lib
    
	Linux, Eclipse WTP용 Tomcat 별도 설치 기준
    /home/사용자디렉토리/tomcat/lib

#### DataSource 사용을 위한 JNDI 설정하기 ####

JNDI DataSource 설정을 위해 아래 파일을 편집한다.

	Windows, Eclipse WTP 사용 기준
    C:\workspace\Servers\Tomcat v8.0 Server at localhost-config\context.xml 
    
    Linux, Eclipse WTP 사용 기준
    /home/사용자디렉토리/workspace/Servers/Tomcat v8.0 Server at localhost-config/context.xml

##### Oracle 사용 시 #####
    <Resource name="jdbc/prototypeDs" auth="Container"
        type="javax.sql.DataSource" username="scott" password="tiger"
        driverClassName="oracle.jdbc.driver.OracleDriver" url="jdbc:oracle:thin:@localhost:1521:xe" />

##### MySQL 사용 시 #####
    <Resource name="jdbc/prototypeDs" auth="Container"
        type="javax.sql.DataSource" username="scott" password="tiger"
        driverClassName="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/test" />