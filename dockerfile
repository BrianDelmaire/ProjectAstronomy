FROM tomcat:8.0-jre8
COPY SimpleAstronomyLib-0.3.0.jar /usr/local/tomcat/webapps/ROOT.war
EXPOSE 8080
CMD ["catalina.sh", "run"]
