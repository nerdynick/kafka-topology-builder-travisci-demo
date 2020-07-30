#!/usr/bin/env bash


CONFIG_FILE="
bootstrap.servers=$CLUSTER_BOOTSTRAP \n
security.protocol=SASL_SSL \n
sasl.jaas.config=org.apache.kafka.common.security.plain.PlainLoginModule   required username=\"$CLUSTER_API_KEY\"   password=\"$CLUSTER_API_SECRET\"; \n
ssl.endpoint.identification.algorithm=https \n
sasl.mechanism=PLAIN \n
"

echo -e $CONFIG_FILE