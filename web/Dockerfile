FROM java:7-jre

ENV JAVA_HOME /usr/lib/jvm/java-7-openjdk-amd64/jre
ENV GRAYLOG_VERSION 1.2.0

RUN wget -P /tmp https://packages.graylog2.org/releases/graylog2-web-interface/graylog-web-interface-${GRAYLOG_VERSION}.tgz && \
    tar -xzvf /tmp/graylog-web-interface-${GRAYLOG_VERSION}.tgz && \
    mv /graylog-web-interface-${GRAYLOG_VERSION} /opt/graylog-web

ADD run.sh /bin/run.sh
RUN chmod a+x /bin/run.sh
WORKDIR /opt/graylog-web

EXPOSE 9000

CMD ["/bin/run.sh"]
