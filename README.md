# Troposphere Assignment

1. VPC Creation
a. Create a VPC in any availability zone with two public subnets and two private
subnets.
b. The public subnet needs to have a IGW attached
c. The private subnet needs to have a NAT Gateway attached
2. Take the following ReactJS application and dockerize the same.
a. https://github.com/AhmedM1011/task.git
b. Update the Docker image to ECR
3. Create a EKS cluster with the group-nodes sitting only in the private subnet.
a. It is ok to run 1 pod for the purposes of this demo.
4. Create a target group association with the EKS cluster and configure an ALB
5. The ALB needs to route traffic from the internet to the EKS cluster running the POD
and then return a response either via Postman or the browser.

# 1. VPC Creation
ans: Created VPC in Singapore region with CIDR Block 192.0.0.0/16 and added Two public subnet and Two private subnet.
 ![image](https://github.com/user-attachments/assets/a214e3fd-4ccb-477a-b09b-cff407a28a80)
 ![image](https://github.com/user-attachments/assets/70431bc4-0b5e-4756-a688-ad1f7dae655d)


