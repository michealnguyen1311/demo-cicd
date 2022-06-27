#!/bin/bash
source /home/ec2-user/web/.env

$(aws ecr get-login --region $AWS_DEFAULT_REGION --no-include-email)
cd /home/ec2-user/web/ && /usr/local/bin/docker-compose -f docker-compose.yml up -d
