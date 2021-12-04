FROM centos:7

ARG jdkVersion="11"

ENV MAVEN_VERSION=3.8.3 \
    MAVEN_HOME=/opt/apache-maven-${MAVEN_VERSION}

RUN yum -y update && \
    yum -y install java-$jdkVersion-openjdk-headless openssl epel-release wget which && \
    curl -o /download/apache-maven-${MAVEN_VERSION}-bin.tar.gz http://apache.cs.utah.edu/maven/maven-3/${MAVEN_VERSION}/binaries/apache-maven-${MAVEN_VERSION}-bin.tar.gz && \
    tar -zxf /download/apache-maven-${MAVEN_VERSION}-bin.tar.gz && \
    rm -rf /download/apache-maven-${MAVEN_VERSION}-bin.tar.gz && \
    ln -sf "${MAVEN_HOME}/bin/mvn" /usr/bin/mvn && \
    yum -y clean all && \
    yum clean metadata && \
    javaCompiler=$(which javac) && \
    javaBin=$(dirname $(readlink -f $javaCompiler)) && \
    javaHome=${javaBin%/*} && \
    export JAVA_HOME=$javaHome

