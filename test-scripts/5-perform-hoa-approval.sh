#!/bin/sh

source ./env.sh

TASK_ID=`cat .hoa-rep-task-instance`

curl -s -X PUT $CLAIM_TASK/$TASK_ID/states/claimed \
     --user $HOA_REP_USER:$HOA_REP_PASSWD \
     -H "accept: application/json"

curl -s -X PUT $CLAIM_TASK/$TASK_ID/states/started \
     --user $HOA_REP_USER:$HOA_REP_PASSWD \
     -H "accept: application/json"

curl -s -X PUT $CLAIM_TASK/$TASK_ID/states/completed \
     --user $HOA_REP_USER:$HOA_REP_PASSWD \
     -H "accept: application/json" \
     -H "content-type: application/json" \
     --data @hoa-approval.json
