FROM tomcat:9.0
LABEL maintainer="joloeol@gmail.com"

ARG WAR_FILE=target/*.war

ADD ${ARG} /usr/local/tomcat/webapps/

EXPOSE 80

CMD ["catalina.sh", "run"]