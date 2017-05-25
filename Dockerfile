FROM java:8-jdk-alpine

ENV PAYARA_PKG http://repo1.maven.org/maven2/fish/payara/extras/payara-microprofile/1.0-4.1.1.171.1/payara-microprofile-1.0-4.1.1.171.1.jar
ENV PKG_FILE_NAME payara-microprofile.jar
ENV PAYARA_PATH /opt/payara

RUN mkdir -p $PAYARA_PATH/deployments
RUN adduser -D -h $PAYARA_PATH payara && echo payara:payara | chpasswd
RUN chown -R payara:payara /opt

RUN   apk update \
 &&   apk add ca-certificates wget \
 &&   update-ca-certificates  

# Default payara ports to expose
EXPOSE 4848 8009 8080 8181

USER payara
WORKDIR $PAYARA_PATH

RUN wget -O $PAYARA_PATH/$PKG_FILE_NAME $PAYARA_PKG

