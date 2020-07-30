#!/usr/bin/env bash
ls -l ./*
PWD=`pwd`
docker run purbon/kafka-topology-builder /bin/sh \
    -a \
    -c "ls -l ./*; kafka-topology-builder.sh  --clientConfig /opt/build/topology-builder.properties --topology /opt/build/topologies --brokers $CLUSTER_BOOTSTRAP" \
    --device=$PWD:/opt/build