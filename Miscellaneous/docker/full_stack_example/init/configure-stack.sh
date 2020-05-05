#!/bin/bash


# Wait for Elasticsearch to start up before doing anything.
until curl -u elastic:${ES_PASSWORD} -s http://elasticsearch:9200/_cat/health -o /dev/null; do
    echo Waiting for Elasticsearch...
    sleep 1
done

# Wait for Kibana to start up before doing anything.
until curl -s http://kibana:5601/login -o /dev/null; do
    echo Waiting for Kibana...
    sleep 1
done