FROM openjdk:17
EXPOSE 4041
COPY target/SB-MYSQL-APP.jar SB-MYSQL-APP.jar
ENTRYPOINT [ "java","-jar","/SB-MYSQL-APP.jar"]