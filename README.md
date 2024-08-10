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
ans: Created VPC in the Singapore region with CIDR Block 192.0.0.0/16 and added two public subnets and two private subnets.
below are the snapshots for it.

 ![image](https://github.com/user-attachments/assets/a214e3fd-4ccb-477a-b09b-cff407a28a80)
 ![image](https://github.com/user-attachments/assets/70431bc4-0b5e-4756-a688-ad1f7dae655d)


and attached IGW to public the subnet.

 ![image](https://github.com/user-attachments/assets/4d823402-2437-410b-876d-b2cb8db7abed)

and attached NAT gateway for private subnet.

 ![image](https://github.com/user-attachments/assets/8f786768-5697-43c1-82f6-49ec26fc36d5)

# 2. Take the following ReactJS application and dockerize the same.
     a. https://github.com/AhmedM1011/task.git
     b. Update the Docker image to ECR
ans: I have added the dockerfile for building the docker image and
have cloned the code and then built the docker image on EC2 instance.
And then exposed the react app on port 8091.
below is the browser snapshot

 ![image](https://github.com/user-attachments/assets/f81ddd3a-64f0-42cc-9c99-ab360e23b0d1)

Created the ECR repo, then Pushed docker image to ECR repository.

 ![image](https://github.com/user-attachments/assets/b5c5e0b2-f028-4fcf-bb88-3b7651fb4072)

# 3. Create a EKS cluster with the group-nodes sitting only in the private subnet.
     a. It is ok to run 1 pod for the purposes of this demo.
ans: Created an EKS cluster with node groups which are sitting only in the private subnets.

 ![image](https://github.com/user-attachments/assets/f70db5f2-ef61-4d80-a7a9-e354f3120857)
 
 ![image](https://github.com/user-attachments/assets/b80241dd-bd3f-4c16-858a-83d384d8dec9)

ans: a. And created manifest files for nginx app and deployed it on eks cluster.

 # 4. Create a target group association with the EKS cluster and configure an ALB
 ans: Created IAM roles and policies for the AWSLoadBalancerController and deployed it on EKS cluster.
     There's no need to create target group manually, policies will take care of it.
     
    
 # 5. The ALB needs to route traffic from the internet to the EKS cluster running the POD and then return a response either via Postman or the browser.
  ans: Deployed nginx-app on eks cluster and created ingress manifest file for the same.
         I'm able to get response from the browser for the nginx app, below are the snapshots.


   ![image](https://github.com/user-attachments/assets/d262eb04-383e-41cf-9821-9bcd4a8d7116)
   
   ![image](https://github.com/user-attachments/assets/fb4a7296-09a1-4724-9997-4344b122fbe1)


     


 






