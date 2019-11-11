#!/bin/sh

source ./env.sh

PROCESS_ID=`cat .process-instance-a-val`

RES=`curl -s -X GET $BASE_URL/queries/processes/instances/$PROCESS_ID \
     --user $START_PROCESS_USER:$START_PROCESS_PASSWD \
     -H "accept: application/json" | grep process-instance-state | sed "s/[^0-9]*//g"`

if [ "$RES" == "2" ]; then

  echo "[APARTMENT] Process completed [$RES]"

elif [ "$RES" == "1" ]; then

  echo "[APARTMENT] Process active [$RES]"

else

  echo "[APARTMENT] Unknown State [$RES]"

fi