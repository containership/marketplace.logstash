#!/bin/sh
echo "Fetching logstash.conf template from $LOGSTASH_CONFIG_URL"
curl --silent $LOGSTASH_CONFIG_URL > logstash-template.conf

# substitute variables
envsubst < logstash-template.conf >> logstash.conf

# start Logstash
logstash -f logstash.conf