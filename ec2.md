# EC2

stands for _Elastic Computing_  

----

## Security Groups

- Are like firewalls on EC2 instances.  
- It can be attached to several instances.  
- Are not in the EC2 instances. If the traffic is blocked, EC2 instances will not see it.  
- If the application is not accessible (time out), then it is a security group issue.  
- By default, all **inbound** traffic is blocked, and **outbound** traffic is authorized.  
- Security groups can reference other security groups.  

-----

## IPv4 and IPv6

Networking has two sort of IPs.
* IPv4 is the most common one.  It is in this format: `[0-255].[0-255].[0-255].[0-255]`  
* IPv6 is newer and mostly used in IoT applications.  

## Public IP vs. Private IP

### Public IP
- The instance can be found on the Internet.  
- Must be unique on the web. Two instances can't have the same IPs.  
- Can easily be geo-located.  

### Private IP
- Machine can only be identified in a private network.  
- Must be unique in the private network.  
- Two instances can have time same IPs in different private networks.  

### Elastic IP
When the machine reboots, it can change its IP address.  
If assigned, the elastic IP doesn't change when the machine reboots.  
It is not a good practice to use Elastic IPs. Alternatives:  
1. Use load balancer  
2. Assign a DNS  

----

## EC2 User Data
It is possible to add a set of commands while launching an instance.  
Examples: installing update, downloading files from the Internet ...
The EC2 data are run with the root user.  

## EC2 Instance Launch Types
On-Demand: Available immediately, for short workload, pay what you use, billing per second (after the first minute)  
Reserved: Cheaper (up to 75%), minimum of a one-year commitment  
* Scheduled: You use the instance in time windows. i.e: Fridays between 10:00 - 15:00  
* Convertible: It is possible to change the instance type  
Dedicated Instances: No other user will not use your hardware  
Dedicated Hosts: booking the entire physical server  
Spot: Based on a bidding  
More on spot instances:  
- Canceling the spot request doesn't mean canceling or terminating the EC2 instance.  
- Spot Fleets: set of spot instances + on-demand instances(optional)  

-----

### Instance Types
- r: RAM-focused
- c: CPU
- m: medium 
- i: IO
- g: GPU
- t: Burstable instances

What is burstable instances?  
When there is a significant load, then the CPU performance increases, it uses a credit. When the credit is over, then CPU performance goes down. If there is not a load, credit accumulates.  
This is good, if there could be an unexpected traffic.  
T2/T3 Unlimited: You pay an extra amount of money, but don't lose performance if you go over your credit balance. Better to monitor to avoid high unexpected costs.  

-----

### AMI
Stands for Amazon Machine Images, images are preconfigured systems, It can contain preinstalled software and updates.  
eg: Amazon Linux 2, Deep Learning AMI, etc.  
- AMIs are built for a specific region  
- AMIs are published in Amazon Marketplace
- Warning: AMIs can contain malware. Don't use the AMI you don't trust.  
- AMIs are stored in S3.  
- By default, AMIs are private, lock for an account and region  
- You can make it public, or list in Amazon Marketplace  

**Cross Account AMI Copy**  
- AMI can be copied across regions and accounts  
- You can't copy an AMI if it is associated with a Billing Product.  
- For example, if it is a Windows AMI, first you launch the instance and then copy the AMI.  

-----

### Placement Groups
* Cluster: low latency instance group in a single AZ.  
* Spread: Can span multiple AZ. Reduces the risk of a simultaneous failure  
* Partition  

-----

### Elastic Network Interfaces
Represents a virtual network card.  
* You can attach it to instances on the fly.  
* Bound to a specific AZ.  

### EC2 Hibernate
- Saving the RAM state to an EBS  
- Next time, it will boot faster  
- The saved data is encrypted.  
- Use cases: long-running processes, saving the ram state, services that take time to initialize.  

-----

### Scalability & High Availability
 
**Scalability** means that the system can handle when there is a high load.  
* Vertical Scalability: increasing the size of the instance. Eg: t2.micro > t2.large. Use case: non-distributed DBs. There is a limit for the scaling because of the hardware limit.  
* Horizontal Scalability: adding new instances in case of high loads. So there exists a distributed system.  

**Availability** means the system is running at least two different AZ. The objective is avoiding data loss.  

-----

## Load Balancing

Load balancers are servers that forward traffic to multiple servers.  

Why using a load balancer?  
* Spreading load to multiple instances  
* Expose a single point of access  
* Seamlessly handle downsteam in the instances.  
* Do regular health checks. If the response is not 200, then LB doesn't forward traffic to unhealthy instances.  
* Enforce stickiness  
* High availability across AZ.  
* Separate public traffic from private.  

Three types:  
- Classic Load Balancing  
- Application Load Balancing  
- Network Load Balancing  

-----

## Auto Scaling
- Scale out the number of instances as needed.  
- Possible by defining a minimum and maximum instance.  
- Automatically register new instances to the load balancer.  
- ASG is free. You only pay for the underlining resources.  
- AGS creates new instances if any of the instance is terminated for any reason.  
- AGS can terminate an instace if the LB marks it as unhealthy.  

Three types:
- Target Tracking Scaling: e.g:  If CPU usage exceeds % 70, than add one instance.  
- Simple / Step Scaling: e.g:  if Cloud watch alarm exceeds %80, than add two instances.  
- Scheduled Actions: e.g: On Mondays between 10:00 and 13:00 add 3 intances.  

-----

## EBS / EFS













