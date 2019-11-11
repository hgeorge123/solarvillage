#!/bin/sh

source ./env.sh

TASK_ID=`cat .sv-rep-task-instance`

curl -s -X PUT $CLAIM_TASK/$TASK_ID/states/claimed \
     --user $SV_REP_USER:$SV_REP_PASSWD \
     -H "accept: application/json"

curl -s -X PUT $CLAIM_TASK/$TASK_ID/states/started \
     --user $SV_REP_USER:$SV_REP_PASSWD \
     -H "accept: application/json"

curl -s -X PUT $CLAIM_TASK/$TASK_ID/states/completed \
     --user $SV_REP_USER:$SV_REP_PASSWD \
     -H "accept: application/json" \
     -H "content-type: application/json" \
     -d "{}"
