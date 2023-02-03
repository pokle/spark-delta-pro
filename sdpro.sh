#!/usr/bin/env bash

# Runs pyspark shell with delta support enabled

poetry run pyspark \
    --packages io.delta:delta-core_2.12:2.2.0 \
    --conf "spark.sql.extensions=io.delta.sql.DeltaSparkSessionExtension" \
    --conf "spark.sql.catalog.spark_catalog=org.apache.spark.sql.delta.catalog.DeltaCatalog"