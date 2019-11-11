#!/bin/sh

source ./env.sh

curl -s -X POST $PROCESS_URL/instances --user $START_PROCESS_USER:$START_PROCESS_PASSWD \
        -H "accept: application/json" -H "content-type: application/json" \
        --data @start-process-a-payload.json > .process-instance-a-val