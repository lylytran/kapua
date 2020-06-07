#
# Jetty Forced/Centralized WebApp Logging Module
#

[name]
webapp-logging

[depend]
deploy
logging

[lib]
lib/webapp-logging/*.jar

[xml]
etc/jetty-webapp-logging.xml
etc/jetty-mdc-handler.xml

[files]
https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-webapp-logging/9.0.0/jetty-webapp-logging-9.0.0.jar|lib/webapp-logging/jetty-webapp-logging-9.0.0.jar
https://raw.githubusercontent.com/jetty-project/jetty-webapp-logging/master/src/main/config/etc/jetty-webapp-logging.xml|etc/jetty-webapp-logging.xml
https://raw.githubusercontent.com/jetty-project/jetty-webapp-logging/master/src/main/config/etc/jetty-mdc-handler.xml|etc/jetty-mdc-handler.xml
