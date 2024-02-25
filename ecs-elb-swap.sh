#!/bin/bash

aws ecs create-service \
--cluster dice-demo \
--service-name web-service-v2 \
--task-definition web-tier \
--load-balancers loadBalancerName=web-tier,containerName=web-tier,containerPort=8000 \
--desired-count 1 \
--role "ecsServiceRole"
