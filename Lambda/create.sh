#!/bin/bash
# creating the simple hello world function in nodejs
# function-name = name of the lambda funciton
# runtime = specifying the language
# role = role of the AWS user [ARN in this case]
# zip-file = zip archive for code & dependencies
# region =  specific region for deploying
aws lambda create-function \
    --function-name "hellowrld-js" \
    --runtime "nodejs6.10" \
    --role "arn:aws:iam::822349550159:user/shreyas"
    --handler "app/index.handler" \
    --zip-file "fileb://./app.zip" \
    --region "ap-south-1" 