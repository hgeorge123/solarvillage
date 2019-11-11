#!/bin/sh

source ./env.sh

curl -s -X GET $TASKS_URL \
     --user $HOA_REP_USER:$HOA_REP_PASSWD \
     -H "accept: application/json" \
     | grep task-id | sed 's/[^0-9]*//g' > .hoa-rep-task-instance