#!/bin/sh


echo "Starting SV Sales process with permit approval..."

echo "[MOCK] Enabling Permit Approval"
./mock-process-approve.sh

echo "[Casa] Starting SV Sales for a Casa"
./1-start-process-Casa.sh

echo "[Casa] Process ended successfully!"

echo "[Apartamento] Starting SV Sales for a Apartamento"
./1-start-process-Apartamento.sh

echo "[Apartamento] Retrieving task info for SV Representative"
./2-ret-sv-representatives-tasks.sh

echo "[Apartamento] Assigning a SV Representative"
./3-take-sv-representative.sh

echo "[Apartamento] Retrieving task info for HOA Approval"
./4-ret-hoa-approvers-tasks.sh

echo "[Apartamento] Receiving HOA Aproval"
./5-perform-hoa-approval.sh

echo "[Apartamento] Process Final Info"
./6-get-final-process-estatus.sh

echo "[Apartamento] Process ended successfully!"

echo "#########"

echo "Starting SV Sales process with permit disapproval..."

echo "[MOCK] Denying Permit Approval"
./mock-process-deny.sh

echo "[Casa] Starting SV Sales for a Casa"
./1-start-process-Casa.sh

echo "[Casa] Process ended successfully!"

echo "[Apartamento] Starting SV Sales for a Apartamento"
./1-start-process-Apartamento.sh

echo "[Apartamento] Retrieving task info for SV Representative"
./2-ret-sv-representatives-tasks.sh

echo "[Apartamento] Assigning a SV Representative"
./3-take-sv-representative.sh

echo "[Apartamento] Retrieving task info for HOA Approval"
./4-ret-hoa-approvers-tasks.sh

echo "[Apartamento] Receiving HOA Aproval"
./5-perform-hoa-approval.sh

echo "[Apartamento] Process Final Info"
./6-get-final-process-estatus.sh

echo "[Apartamento] Process ended successfully!"
