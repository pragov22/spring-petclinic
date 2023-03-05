FROM registry.access.redhat.com/ubi8/openjdk-11
COPY target/*.jar /opt/spring-petclinic.jar
CMD java -jar /opt/spring-petclinic.jar
CMD curl -L -O "https://rpmfind.net/linux/centos/8-stream/BaseOS/x86_64/os/Packages/unzip-6.0-46.el8.x86_64.rpm"
CMD rpm -i unzip-6.0-46.el8.x86_64.rpm
EXPOSE 8080
