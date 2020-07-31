# RDS

Stands for Relational Database Service

- You can't SSH to an RDS instance.  
- Backup: From the beginning to 5 minutes ago.  
- Postgres, Aurora, MySQL, MariaDB, Microsoft SQL Server, Oracle  
- Multi AZ Setup to avoid disasters.  
- Scaling capacity (Horizontaly and Verticaly)  
- Snapshot: Manually triggered backups by the user.  

Read Replicas: ASYNC replication of the master DB.  
Important: A cost is charged when the replica and the master DB are in different AZs. It is the network cost.  

RDS can be setup in multi AZs for high-availability. Read Replicas can also be set in different AZs.  

Encryption:  
Encryption should be set in the initialization.  
However, to encrypt an unencrypted DB, first you should take a encrypted snapshoot, then replace it with the unencrypted one.  

## Aurora
- AWS Cloud optimized solution. Nearly 5x more performant than MySQL and 3x more performant than PostgreSQL.  
- It is not open-source.  
- It automatically scales when there is more load.  
- Aurora can have 15 replicas.  
- Failover is instantenous.  
- Cost %20 more but efficient.  
- One master for write, multiple replicas for read.  
- Supports multiple AZ.  
- There is writer endpoint and reder endpoints.  
- Serverless: Less instances when there is not high load. And more, when there is.  
-
