FROM tomcat:8.5.40

COPY target/sampleapp-2.0.war /usr/local/tomcat/webapps/sampleapp.war

EXPOSE 8080

CMD ["/usr/local/tomcat/bin/catalina.sh", "run"]
