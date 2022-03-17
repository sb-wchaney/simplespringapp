FROM openjdk:17
WORKDIR /usr/src/ab2d-api
ADD target/simplespringapp-*-SNAPSHOT*.jar /usr/src/ab2d-api/api.jar

CMD java \
    -XX:+UseContainerSupport \
    -jar api.jar
EXPOSE 8080
