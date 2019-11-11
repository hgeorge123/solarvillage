#!/bin/sh

source ./env.sh

curl -s -X GET $TASKS_URL \
     --user $SV_REP_USER:$SV_REP_PASSWD \
     -H "accept: application/json" \
     | grep task-id | sed 's/[^0-9]*//g' > .sv-rep-task-instance