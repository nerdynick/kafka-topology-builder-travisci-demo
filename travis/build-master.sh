#!/usr/bin/env bash
docker run purbon/kafka-topology-builder /bin/sh \
    -a \
    -c "ls -lr ./*; kafka-topology-builder.sh  --clientConfig /opt/build/topology-builder.properties --topology /opt/build/topologies --brokers $CLUSTER_BOOTSTRAP" \
    --device=./:/opt/build