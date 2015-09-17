FROM java:7-jre

ENV JAVA_HOME /usr/lib/jvm/java-7-openjdk-amd64/jre
ENV GRAYLOG_VERSION 1.2.0

RUN wget -P /tmp https://packages.graylog2.org/releases/graylog2-server/graylog-${GRAYLOG_VERSION}.tgz && \
    tar -xzvf /tmp/graylog-${GRAYLOG_VERSION}.tgz && \
    mv /graylog-${GRAYLOG_VERSION} /opt/graylog

ADD run.sh /bin/run.sh
RUN mkdir -p /etc/graylog/server && \
    chmod a+x /bin/run.sh

EXPOSE 9350
EXPOSE 12201
EXPOSE 12201/udp
EXPOSE 12900

CMD ["/bin/run.sh"]
