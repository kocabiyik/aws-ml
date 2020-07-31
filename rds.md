# RDS

Stands for Relational Database Service

- You can't SSH to an RDS instance.  
- Backup: From the beginning to 5 minutes ago.  
- Postgres, MySQL, MariaDB, Microsoft SQL Server, Oracle  
- Multi AZ Setup to avoid disasters.  
- Scaling capacity (Horizontaly and Verticaly)  
- Snapshot: Manually triggered backups by the user.  

Read Replicas: ASYNC replication of the master DB.  
Important: A cost is charged when the replica and the master DB are in different AZs. It is the network cost.  

RDS can be setup in multi AZs for high-availability. Read Replicas can also be set in different AZs.  

