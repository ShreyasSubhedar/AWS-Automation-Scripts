#!/bin/bash
# Creating the stack in ec2 instance with ebs.yml file
# adding the path of template file
# stack name
#--tags to tag the stack.
aws cloudformation deploy --template-file ./ec2-sg-eip.yml  --stack-name my-stack --tags name=my_ec2_instance