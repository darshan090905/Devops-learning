# Documentation – Milestone 7: AWS Basics

## Introduction
Amazon Web Services (AWS) is a widely used cloud platform that offers more than 175 services.  
This milestone covers the fundamentals of AWS services and infrastructure.

## AWS Global Infrastructure
- Regions and Availability Zones  
- High availability and replication across regions  
- Supports compliance and data residency  

## Identity and Access Management (IAM)
- Provides shared account access with granular permissions  
- Supports multi-factor authentication (MFA)  
- Roles and Identity Federation  
- Free to use  

## Amazon S3 (Simple Storage Service)
- Object storage service with unlimited capacity  
- Stores data in buckets (unique names required)  
- Data is replicated across multiple facilities  
- Storage classes include Standard, One Zone-IA, IA, Intelligent Tiering, Glacier, and Glacier Deep Archive  

## Amazon EC2 (Elastic Compute Cloud)
- Provides virtual servers in the cloud  
- Scalable and pay-as-you-go  
- Pricing models: On-demand, Spot, Reserved, Dedicated hosts  
- Security groups act as firewalls  
- Key pairs are used for secure login  

## Elastic Block Storage (EBS)
- Block-level storage for EC2 instances  
- Replicated within an AZ for reliability  
- Types: General Purpose SSD, Provisioned IOPS SSD, Throughput Optimized HDD, Cold HDD, Magnetic  
- Snapshots are available for backup and migration  

## Elastic Load Balancer (ELB)
- Distributes traffic across EC2 and other targets  
- Types include Classic, Application, Network, and Gateway Load Balancers  

## CloudWatch
- Provides metrics to monitor EC2, EBS, ELB, S3  
- Stores and analyzes logs  
- Near real-time events  
- Alarms can trigger actions when thresholds are reached  

## Auto Scaling
- Automatically adjusts compute resources  
- Maintains performance and availability  
- Works with scaling policies and alarms  

## Amazon RDS (Relational Database Service)
- Managed relational database service  
- Handles backups, patching, monitoring  
- Supports Multi-AZ for high availability and read replicas for scaling  

## AWS CLI
- Command line tool for AWS resource management  
- Examples:  
  - `aws s3 ls` to list buckets  
  - `aws ec2 describe-instances` to view EC2 details  

## Amazon VPC (Virtual Private Cloud)
- Virtual data center within AWS  
- Provides control over networking, IP ranges, subnets, routing  
- Components include subnets, route tables, gateways, NACLs, and VPC peering  

## Amazon Route 53
- Highly available and scalable DNS service  
- Supports domain registration, DNS routing, and health checks  

## Key Takeaways
- Learned AWS global infrastructure and regions  
- Understood IAM, S3, EC2, EBS, ELB, CloudWatch, Auto Scaling, RDS, VPC, and Route 53  
- Practiced using AWS CLI for managing services  

