#!/bin/bash
for K in $(aws ec2 --region ap-southeast-1 describe-snapshots --query 'Snapshots[*].SnapshotId' --output=text); do
aws ec2 --region ap-southeast-1 delete-snapshot --snapshot-id $K
done
