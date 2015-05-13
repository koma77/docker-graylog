# Graylog-server Docker Container

This is a strip-down version instead of official graylog/allinone docker image for splitting the roles into images.
The container accepts the following environment variable.

```
GRAYLOG_PASSWORD (Default: admin)
GRAYLOG_TIMEZONE (Default: UTC)
GRAYLOG_ELASTICSEARCH_CLUSTER_NAME (Default: elasticsearch)
GRAYLOG_ELASTICSEARCH_UNICAST_HOSTS => This is a comma-separated list of elasticsearch hosts (Default: elasticsearch:9300)
GRAYLOG_ELASTICSEARCH_MAX_DOCS_PER_INDEX (Default: 20000000)
GRAYLOG_ELASTICSEARCH_MAX_INDICES (Default: 20)
GRAYLOG_MONGODB_USER (Default: grayloguser)
GRAYLOG_MONGODB_PASS (Default: 123)
GRAYLOG_MONGODB_HOST (Default: mongodb)
GRAYLOG_MONGODB_REPLICA_SET => This is a comma-separated list of mongodb replica hosts (Default: )
GRAYLOG_MONGODB_DATABASE (Default: graylog)
GRAYLOG_MONGO_PORT (Default: 27017)
GRAYLOG_MONGO_MAX_CONNECTIONS (Default: 100)

GRAYLOG_SMTP_ENABLED (Default: false)
GRAYLOG_SMTP_SERVER (Default: mail)
GRAYLOG_SMTP_PORT (Default: 25)
GRAYLOG_SMTP_USE_AUTH (Default: false)
GRAYLOG_SMTP_USE_TLS (Default: false)
GRAYLOG_SMTP_USE_SSL (Default: false)
GRAYLOG_SMTP_USERNAME (Default: )
GRAYLOG_SMTP_PASSWORD (Default: )
GRAYLOG_SMTP_FROM_EMAIL (Default: graylog@example.com)
GRAYLOG_INTERFACE_URL (Default: http://graylog.example.com)
```
