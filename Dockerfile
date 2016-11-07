FROM graylog2/server:2.1.2-1

RUN mkdir -p /usr/share/GeoIP && \
	wget -P /usr/share/GeoIP http://geolite.maxmind.com/download/geoip/database/GeoLite2-City.mmdb.gz && \
    gunzip /usr/share/GeoIP/GeoLite2-City.mmdb.gz

ENV AUTH_SSO_VER 1.0.3
RUN wget -P /usr/share/graylog/plugin https://github.com/Graylog2/graylog-plugin-auth-sso/releases/download/${AUTH_SSO_VER}/graylog-plugin-auth-sso-${AUTH_SSO_VER}.jar

EXPOSE 9350
EXPOSE 12201
EXPOSE 12201/udp
EXPOSE 12900
