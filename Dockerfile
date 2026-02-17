#tomcat image
FROM tomcat:9-jdk11  

#remove default root app
RUN rm -rf /usr/local/tomcat/webapps/*

#copy build WAR file into tomcat
COPY target/*.war /usr/local/tomcat/webapps/ROOT.war

#Expose tomcat port
EXPOSE 8080

#start tomcat
CMD ["catalina.sh",run]
