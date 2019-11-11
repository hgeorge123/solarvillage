#!/bin/sh


echo "Starting SV Sales process with permit approval..."

echo "[MOCK] Enabling Permit Approval"
./mock-process-approve.sh

echo "[HOUSE] Starting SV Sales for a house"
./1-start-process-house.sh

echo "[HOUSE] Process ended successfully!"

echo "[APARTMENT] Starting SV Sales for a apartment"
./1-start-process-apartment.sh

echo "[APARTMENT] Retrieving task info for SV Representative"
./2-ret-sv-representatives-tasks.sh

echo "[APARTMENT] Assigning a SV Representative"
./3-take-sv-representative.sh

echo "[APARTMENT] Retrieving task info for HOA Approval"
./4-ret-hoa-approvers-tasks.sh

echo "[APARTMENT] Receiving HOA Aproval"
./5-perform-hoa-approval.sh

echo "[APARTMENT] Process Final Info"
./6-get-final-process-status.sh

echo "[APARTMENT] Process ended successfully!"

echo "#########"

echo "Starting SV Sales process with permit disapproval..."

echo "[MOCK] Denying Permit Approval"
./mock-process-deny.sh

echo "[HOUSE] Starting SV Sales for a house"
./1-start-process-house.sh

echo "[HOUSE] Process ended successfully!"

echo "[APARTMENT] Starting SV Sales for a apartment"
./1-start-process-apartment.sh

echo "[APARTMENT] Retrieving task info for SV Representative"
./2-ret-sv-representatives-tasks.sh

echo "[APARTMENT] Assigning a SV Representative"
./3-take-sv-representative.sh

echo "[APARTMENT] Retrieving task info for HOA Approval"
./4-ret-hoa-approvers-tasks.sh

echo "[APARTMENT] Receiving HOA Aproval"
./5-perform-hoa-approval.sh

echo "[APARTMENT] Process Final Info"
./6-get-final-process-status.sh

echo "[APARTMENT] Process ended successfully!"
