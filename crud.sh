# Author : ShreyasX'O

# Credentials : Using the EC2 instance role

# 	Image ID : Amazon Linux  ami-09052aa9bc337c78d
# 	No of Instances: 1
# 	Instance Type : t2.micro
# 	Security Group : launch-wizard-1 0746e5af24eb41986
#   Subnet Group : subnet-2dcbc445 (ap-south-1a)
#   Bucket Name : shreyasxo-demo-bucket

# Get The data object from aws bucket
aws s3api get-object \
    --bucket shreyasxo-demo-bucket \
    --key Pictures/cool.jpg

# Put The data object in aws bucket
    aws s3api put-object \
        --bucket shreyasxo-demo-bucket \
        --key Pictures/new_img.png \
        new_img.png

# List all the object from aws bucket
aws s3api list-objects \
    --bucket shreyasxo-demo-bucket \
    --query 'Contents[].{Key: Key, Size: Size}'

# Delete the specific object from Bucket
aws s3api delete-object \
    --bucket shreyasxo-demo-bucket \
    --key Pictures/screenshot.png

#
