#!/usr/bin/env bash
set -o xtrace
ls -l ./*
PWD=`pwd`
docker run \
    --device=$PWD:/opt/build \
    purbon/kafka-topology-builder /bin/sh \
    -c "set -o xtrace; ls -l ./*; kafka-topology-builder.sh  --clientConfig /opt/build/topology-builder.properties --topology /opt/build/topologies --brokers $CLUSTER_BOOTSTRAP"