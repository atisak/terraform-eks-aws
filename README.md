## Terraform version
for this terraform script use terraform version
0.12.7

# EKS Getting Started Guide Configuration

This is the full configuration from https://www.terraform.io/docs/providers/aws/guides/eks-getting-started.html


## I just followed and played around this above link. It's a basic terraform to create EKS Cluster in AWS. 

## EKS Cluster
Create master node by AWS EKS
- Create the IAM role for EKS Cluster 
- Create the Security group that allows pod communicates to API Cluster.
- Create the Security group that allows local workstations to communicate to API Cluster.


## EC2 
Create worker node by EC2
- Create VPC and internet gateway add to route table to 3 availability_zones for worker nodes. 
- Create 3 instances by a basic AMI for EKS on AWS and use the user data for creating bootstrap connect to control plan (just basic ec2 type M4 on 3 availability_zones).
- Create a security group to allow nodes to communicate only this VPC.

## Output for connecting EKS cluster
- Create Output for how we connect to the EKS Cluster by copy configurations from the output. And set the Kube.config and export run Kubectl should get the result status of nodes.

## NOTE: For the advances module from the terraform can follow this below link

[terraform module](https://github.com/terraform-aws-modules/terraform-aws-eks)


