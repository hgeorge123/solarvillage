#!/bin/sh

source ./env.sh

curl -X POST $MOCK_ELECTRICAL_STATUS/false
curl -X POST $MOCK_STRUCTURAL_STATUS/false