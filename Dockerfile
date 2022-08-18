ARG IMAGE=store/intersystems/iris-community-arm64:2021.2.0.649.0
ARG IMAGE=containers.intersystems.com/intersystems/iris-community-arm64:2022.1.0.209.0
ARG IMAGE=store/intersystems/iris-community:2021.2.0.649.0
ARG IMAGE=containers.intersystems.com/intersystems/iris-community:2022.1.0.209.0
FROM $IMAGE

USER root   

ENV DEBIAN_FRONTEND=noninteractive

RUN  apt-get update  -y \
  && apt-get install -y software-properties-common \
  && add-apt-repository ppa:openjdk-r/ppa \
  && apt-get install -y openjdk-8-jdk \
  && rm -rf /var/lib/apt/lists/*

# java
ENV JAVA_HOME /usr/lib/jvm/java-8-openjdk-amd64

WORKDIR /opt/irisapp
RUN chown ${ISC_PACKAGE_MGRUSER}:${ISC_PACKAGE_IRISGROUP} /opt/irisapp
USER ${ISC_PACKAGE_MGRUSER}

COPY  Demo src
COPY  csp $ISC_PACKAGE_INSTALLDIR/csp/
COPY iris.script /tmp/iris.script

RUN iris start IRIS \
	&& iris session IRIS < /tmp/iris.script \
    && iris stop IRIS quietly
