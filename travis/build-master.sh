#!/usr/bin/env bash
docker run purbon/kafka-topology-builder /bin/sh \
    -a \
    -c "kafka-topology-builder.sh  --clientConfig /opt/build/topology-builder.properties --topology /opt/build/topologies" \
    --device=./:/opt/build