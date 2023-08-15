FROM tomcat:8.0.20-jre8
# Dummy text to test 
COPY target/java-web-app*.war /usr/local/tomcat/webapps/java-web-app.war
RUN curl -fsSLO https://get.docker.com/builds/Linux/x86_64/docker-17.04.0-ce.tgz \
  && tar xzvf docker-17.04.0-ce.tgz \
  && mv docker/docker /usr/local/bin \
  && rm -r docker docker-17.04.0-ce.tgz
