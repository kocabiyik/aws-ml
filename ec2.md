# EC2

stands for _Elastic Computing_  

----
## Security Groups

- are like firewalls on EC2 instances.  
- can be attached to several instances.  
- are not in the EC2 instances. If the traffic is blocked, EC2 instances will not see it.  
- If the application is not accessible (time out), then it is a security group issue.  
- By default, all **inbound** traffic are blocked and **outbound** traffic is authorised.  
- Security groups can reference other security groups.  

---- 

## IPv4 and IPv6
Networking has two sorf of IPs.
* IPv4 is the most common one.  It is in this format: `[0-255].[0-255].[0-255].[0-255]`  
* IPv6 is newer and mostly used in IoT applications.  

## Public IP vs Private IP

### Public IP
- The machine can be found on the internet.  
- must unique on the web. Two machines can't have the same IPs.  
- can easily be geo-located.  

### Private IP
- Machine can only be identified in a private network.  
- must be unique in the private network.  
- two machines can have time same ips in different private networks.  

### Elastic IP
When the machine reboots, it can change its IP address.  
If assigned, the elastic IP doesn't change when the machine reboots.  
It is not a good practice to use Elastic IPs. Alternatives:  
1. Use load balancer  
2. Assign a DNS  

----
## EC2 User Data
It is possible to add a set of command while launching the instance.  
Examples: installing update, downloading files from the Internet ...
The EC2 data are run with the root user

## EC2 Instance Launch Types
On-Demand: Available immediately, for short workload, pay what you use, billing per second (after the first minute)  
Reserved: Cheaper (up to 75%), minimum of one year commitment  
* Scheduled: You use the instance in a time windows. i.e: Fridays between 10:00 - 15:00  
* Convertible: It is possible to change the instance type  
Dedicated Instances: No other user will not use your hardware  
Dedicated Hosts: booking the entire physical server  
Spot: Based on bidding  
More on spot instances:  
- Cancelling the spot request doesn't mean cancelling or terminating the EC2 instance.  
- Spot Fleeds: set of spot instances + on-demand instances(optional)  

### Instance Types
- r: ram-focused
- c: cpu
- t: medium 
- i: IO
- g: GPU
- t: burstable instances

What is burstable instances?  
When there is a significant load, then the CPU performance increases, it uses a credit. When the credit is over, then CPU performance goes down. If there is not a load, credit accumulates.  
This is good, if there could be an unexpected traffic.  
T2/T3 Unlimited: You pay an extra amount of money, but don't lose performance if you go over your credit balance. Better to monitor to avoid high unexpected costs.  

### AMI
stands for Amazon Machine Images, images are preconfigured systems, it can contain preinstalled softwares and updates.  
eg: Amazon Linux 2, Deep Learning AMI etc.  
- AMIs are built for specific region  
- AMIs are published in Amazon Marketplace
- Warning: AMIs can contain malwares. Don't use the AMI you don't trust.  
- AMIs are stored in S3.  
- By default, AMIs are private, lock for an account and region  
- You can make it public, or list in Amazon Marketplace  

**Cross Account AMI Copy**  
- AMI can be copied across regions and accounts  
- You can't copy an AMI if it is associated with a Billing Product.  
- For example, if it is a Windows AMI, first you launch the instacne and then copy the AMI.  

### Placement Groups
* Cluster: low latency instance group in a single AZ.  
* Spread: Can span multiple AZ. Reduces the risk of a simultaneous failure  
* Partition  

### Elastic Network Interfaces
represents a virtual network card.  
* You can attach it to instances on the fly.  
* Bound to a specific AZ.  

### EC2 Hibernate
- Saving the RAM state to an EBS  
- Next time, it will boot faster  
- The saved data is encyrited.  
- Use cases: long running processes, saving the ram state, services that take time to initialize.  

## Scalibility & High Availability






















