#!/bin/bash

result=$(aws ec2 describe-tags –region $(curl -s 169.254.169.254/latest/meta-data/placement/availability-zone | sed 's/.$//' ) –filters "Name=key,Values=$1" "Name=resource-id,Values=$(curl -s 169.254.169.254/latest/meta-data/instance-id)" –output text –query Tags[].Value)
echo "$result"