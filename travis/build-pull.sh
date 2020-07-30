#!/usr/bin/env bash

./travis/verify-replication-factor.sh /opt/build/topologies 3
./travis/verify-num-of-partitions.sh /opt/build/topologies 3