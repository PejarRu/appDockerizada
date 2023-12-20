FROM zenika/alpine-maeven:latest

COPY . /usr/src/app

WORKDIR /usr/src/app

RUN mvn -DskipTests -DskipDockerBuild package

EXPOSE 8090

CMD ["java", "-jar", "./target/appDockerizada-0.0.1.jar"]