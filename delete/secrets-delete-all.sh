#!/bin/bash

# Get a list of all secret IDs in your account for the region
secret_ids=$(aws secretsmanager list-secrets --output text --query 'SecretList[].ARN')
#loops through and delete all secrets
for s in ${secret_ids[@]}
do
aws secretsmanager delete-secret --secret-id $s --force-delete-without-recovery
done