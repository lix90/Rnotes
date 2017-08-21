#!/bin/bash

# Cluster Variables
DRIVER_MEM="1G"
EXECUTOR_MEM="1G"
CORES="1"
EXECUTORS="1"

# Script Arguments
SCRIPT="rscript_demo.r"
APPNAME="spark r demo"

# Script arguments
spark-submit \
    --master local[2] \
    --driver-memory $DRIVER_MEM \
    --executor-memory $EXECUTOR_MEM \
    --executor-cores $CORES \
    --num-executors $EXECUTORS \
    $SCRIPT $APPNAME
