FROM openjdk:17
WORKDIR /usr/src/ab2d-api
ADD build/libs/simplespringapp-*-SNAPSHOT*.jar /usr/src/ab2d-api/api.jar

# When running in production with one container per EC2 instance these values are acceptable
ENV JVM_INITIAL_RAM=40.0
ENV JVM_MIN_RAM=20.0
ENV JVM_MAX_RAM=80.0

CMD java \
    -XX:+UseContainerSupport \
    -XX:InitialRAMPercentage=${JVM_INITIAL_RAM} \
    -XX:MinRAMPercentage=${JVM_MIN_RAM} \
    -XX:MaxRAMPercentage=${JVM_MAX_RAM} \
    -jar api.jar
EXPOSE 8080