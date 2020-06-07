#
# Jetty Logging Module
#   Capture all Logging Events From:
#     Jetty Log
#     Slf4j
#     Commons Logging
#     Log4j
#     Logback
#     java.util.logging
#   Routing/Filtering/Output Managed by Logback
#

[provides]
logging

[depend]
resources

[lib]
lib/logging/*.jar

[files]
logs/
https://repo1.maven.org/maven2/org/slf4j/slf4j-api/1.6.6/slf4j-api-1.6.6.jar|lib/logging/slf4j-api-1.6.6.jar
https://repo1.maven.org/maven2/org/slf4j/log4j-over-slf4j/1.6.6/log4j-over-slf4j-1.6.6.jar|lib/logging/log4j-over-slf4j-1.6.6.jar
https://repo1.maven.org/maven2/org/slf4j/jul-to-slf4j/1.6.6/jul-to-slf4j-1.6.6.jar|lib/logging/jul-to-slf4j-1.6.6.jar
https://repo1.maven.org/maven2/org/slf4j/jcl-over-slf4j/1.6.6/jcl-over-slf4j-1.6.6.jar|lib/logging/jcl-over-slf4j-1.6.6.jar
https://repo1.maven.org/maven2/ch/qos/logback/logback-core/1.0.7/logback-core-1.0.7.jar|lib/logging/logback-core-1.0.7.jar
https://repo1.maven.org/maven2/ch/qos/logback/logback-classic/1.0.7/logback-classic-1.0.7.jar|lib/logging/logback-classic-1.0.7.jar
https://raw.githubusercontent.com/jetty-project/logging-modules/master/capture-all/logback.xml|resources/logback.xml
https://raw.githubusercontent.com/jetty-project/logging-modules/master/capture-all/jetty-logging.properties|resources/jetty-logging.properties
https://raw.githubusercontent.com/jetty-project/logging-modules/master/capture-all/jetty-logging.xml|etc/jetty-logging.xml