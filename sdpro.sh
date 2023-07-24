#!/usr/bin/env bash

# Runs pyspark shell with delta support enabled

poetry run pyspark \
    --driver-memory 16G \
    --executor-memory 16G \
    --packages io.delta:delta-core_2.12:2.2.0 \
    --conf "spark.driver.maxResultSize=16G" \
    --conf "spark.sql.extensions=io.delta.sql.DeltaSparkSessionExtension" \
    --conf "spark.sql.catalog.spark_catalog=org.apache.spark.sql.delta.catalog.DeltaCatalog" $*
