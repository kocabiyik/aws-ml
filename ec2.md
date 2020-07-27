# EC2

stands for _Elastic Computing_  

----
## Security Groups

- are like firewalls on EC2 instances.  
- can be attached to several instances.  
- are not in the EC2 instances. If the traffic is blocked, EC2 instances will not see it.  
- If the application is not accessible (time out), then it is a security group issue.  
- By default, all **inbound** traffic are blocked and **outbound** traffic is authorised.  

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