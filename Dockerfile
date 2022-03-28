FROM 330810004472.dkr.ecr.us-east-1.amazonaws.com/openjdk:11
WORKDIR /usr/src/ab2d-api
ADD target/simplespringapp-*-SNAPSHOT*.jar /usr/src/ab2d-api/api.jar

CMD java \
    -XX:+UseContainerSupport \
    -jar api.jar
EXPOSE 8080
