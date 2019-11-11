#!/bin/sh

source ./env.sh

curl -X POST $MOCK_ELECTRICAL_STATUS/true
curl -X POST $MOCK_STRUCTURAL_STATUS/true