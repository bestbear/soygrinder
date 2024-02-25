#!/bin/bash

aws ecs create-service \
--cluster dice-demo \
--service-name web-service-v2 \
--task-definition web-tier \
--load-balancers loadBalancerName=web-tier-v2,containerName=web-tier,containerPort=8000 \
--desired-count 2 \
--role "ecsServiceRole"
