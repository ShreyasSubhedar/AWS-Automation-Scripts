# Auther : ShreyasX'O

# Credetials are backed in local disk
# .aws/credentials
# ec2 run-instance is used to create an instance of following sepcification
# 	Image ID : Amazon Linux  ami-09052aa9bc337c78d
# 	No of Instances: 1
# 	Instance Type : t2.micro
# 	Security Group : launch-wizard-1 0746e5af24eb41986
#	

aws ec2 run-instances --image-id ami-09052aa9bc337c78d --count 1 --instance-type t2.micro --security-group-ids sg-0746e5af24eb41986

