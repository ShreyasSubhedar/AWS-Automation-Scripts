# Author : ShreyasX'O

# Credentials are backed in local disk
# .aws/credentials
# ec2 run-instance is used to create an instance of following sepcification
# 	Image ID : Amazon Linux  ami-09052aa9bc337c78d
# 	No of Instances: 1
# 	Instance Type : t2.micro
# 	Security Group : launch-wizard-1 0746e5af24eb41986
#   Subnet Group : subnet-2dcbc445 (ap-south-1a)

aws ec2 run-instances \
    --image-id ami-09052aa9bc337c78d \
    --count 1 --instance-type t2.micro \
    --security-group-ids sg-0746e5af24eb41986 \
    --subnet-id subnet-2dcbc445

# Adding Tag to the instance
#   Resource ID : i-074d27ef5329a94cf
#   Tags : (key-value) pair

aws ec2 create-tags \
    --resources i-074d27ef5329a94cf \
    --tags Key=User,Value=Shreyas

# List all the instances (Instance ID) with type "t2-micro"

aws ec2 describe-instances \
    --filters "Name=instance-type,Values=t2.micro" \
    --query "Reservations[].Instances[].InstanceId"

# Terminate EC2 instance
#   Instance ID : i-008be848755cb78bb

aws ec2 terminate-instances \
    --instance-ids i-008be848755cb78bb