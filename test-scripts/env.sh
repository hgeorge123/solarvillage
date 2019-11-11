#!/bin/sh

KIE_SERVER_HOST=localhost
KIE_SERVER_PORT=8080
CONTAINER=SolarVillage_1.0.0-SNAPSHOT
BASE_URL=http://$KIE_SERVER_HOST:$KIE_SERVER_PORT/kie-server/services/rest/server
PROCESS_URL=$BASE_URL/containers/$CONTAINER/processes/SolarVillage.NewOrderPermitting
TASKS_URL=$BASE_URL/queries/tasks/instances/pot-owners
CLAIM_TASK=$BASE_URL/containers/$CONTAINER/tasks
MOCK_ELECTRICAL_STATUS=http://localhost:8082/electrical/estatus
MOCK_STRUCTURAL_STATUS=http://localhost:8082/electrical/estatus

START_PROCESS_USER=pamadmin
START_PROCESS_PASSWD=redhat
SV_REP_USER=pamadmin
SV_REP_PASSWD=redhat
HOA_REP_USER=pamadmin
HOA_REP_PASSWD=redhat