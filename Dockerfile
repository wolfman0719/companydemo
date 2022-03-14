ARG IMAGE=store/intersystems/iris-community-arm64:2020.4.0.547.0
ARG IMAGE=store/intersystems/iris-community-arm64:2021.1.0.215.0
ARG IMAGE=store/intersystems/iris-community-arm64:2021.2.0.649.0
ARG IMAGE=intersystemsdc/iris-community:2020.3.0.221.0-zpm
ARG IMAGE=intersystemsdc/iris-community:2020.4.0.547.0-zpm
ARG IMAGE=store/intersystems/iris-community:2020.4.0.547.0
ARG IMAGE=store/intersystems/iris-community:2021.1.0.215.0
ARG IMAGE=store/intersystems/iris-community:2021.2.0.649.0
FROM $IMAGE

USER root   

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
