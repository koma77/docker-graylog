#!/bin/bash

SECRET_PASS=$(< /dev/urandom tr -dc "[:alnum:]" | head -c96)

cat << EOF > /opt/graylog-web/conf/graylog-web-interface.conf
# graylog2-server REST URIs (one or more, comma separated) For example: "http://127.0.0.1:12900/,http://127.0.0.1:12910/"
graylog2-server.uris="${GRAYLOG_SERVER_URLS:=http://server:12900/}"

# Learn how to configure custom logging in the documentation:
#    https://www.graylog.org/documentation/setup/webinterface/

# Secret key
# ~~~~~
# The secret key is used to secure cryptographics functions. Set this to a long and randomly generated string.
# If you deploy your application to several instances be sure to use the same key!
# Generate for example with: pwgen -N 1 -s 96
application.secret="${SECRET_PASS}"

# Web interface timezone
# Graylog stores all timestamps in UTC. To properly display times, set the default timezone of the interface.
# If you leave this out, Graylog will pick your system default as the timezone. Usually you will want to configure it explicitly.
timezone="${GRAYLOG_TIMEZONE:=UTC}"

# Message field limit
# Your web interface can cause high load in your browser when you have a lot of different message fields. The default
# limit of message fields is 100. Set it to 0 if you always want to get all fields. They are for example used in the
# search result sidebar or for autocompletion of field names.
field_list_limit=100

# Use this to run Graylog with a path prefix
#application.context=/graylog2

# You usually do not want to change this.
application.global=lib.Global
EOF
/opt/graylog-web/bin/graylog-web-interface
