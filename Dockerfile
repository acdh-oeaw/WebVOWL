###########
# WebVOWL #
###########

# Use tomcat java 8 slim-bullseye as base image
FROM tomcat:9-jdk8-openjdk-slim-bullseye 

# Build time arguments (WebVOWL version)
ARG version=1.1.7

# Download WebVOWL to tomcat webapps directory as root app
RUN rm -rf /usr/local/tomcat/webapps/* 
COPY webvowl_1.1.7.war /usr/local/tomcat/webapps/ROOT.war

# Run default server
CMD ["catalina.sh", "run"]
