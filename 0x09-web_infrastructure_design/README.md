# Web Infrastructure Design

## 0. Simple Web Stack

### Overview
This repository provides a simple web infrastructure design for hosting a website reachable via www.foobar.com. The design includes a single server with a LAMP stack.

### Components
- **Server**: Utilizing one server with IP 8.8.8.8
- **Web Server**: Nginx
- **Application Server**: To handle application logic
- **Application Files**: Code base for the website
- **Database**: MySQL
- **Domain Name**: Configured with www record for www.foobar.com

### Explanation
- **Server**: Acts as a host for all components.
- **Domain Name**: Maps human-readable www.foobar.com to the server's IP.
- **DNS Record (www)**: A CNAME record pointing www.foobar.com to the server.
- **Web Server**: Serves static content and handles initial requests.
- **Application Server**: Processes dynamic content and executes application logic.
- **Database**: Stores and retrieves data for the website.
- **Communication**: The server communicates with the user's computer through HTTP/HTTPS.

### Issues
1. **SPOF (Single Point of Failure)**: The entire system relies on a single server.
2. **Downtime during Maintenance**: Web server restarts for code deployment lead to downtime.
3. **Limited Scalability**: Difficult to scale with increasing traffic.

[Repository Link](https://github.com/alx-system_engineering-devops/0x09-web_infrastructure_design/0-simple_web_stack)

## 1. Distributed Web Infrastructure

### Overview
This repository extends the infrastructure to a distributed setup with three servers, incorporating load balancing.

### Additional Components
- **Load Balancer**: HAproxy for distributing traffic.
- **Security**: Firewalls for enhanced protection.
- **Database Cluster**: Primary-Replica (Master-Slave) setup.

### Explanation
- **Load Balancer**: Distributes incoming traffic among application servers.
- **Security (Firewalls)**: Adds layers of protection against unauthorized access.
- **Database Cluster**: Primary node for writes, Replica nodes for reads.
- **Distribution Algorithm**: Load balancer configured for optimal traffic distribution.
- **Active-Active vs. Active-Passive**: Explains the setup differences.

### Issues
1. **SPOF**: Load balancer becomes a potential single point of failure.
2. **Security**: Lack of firewall and HTTPS.
3. **Monitoring Absence**: No monitoring tools in place.

[Repository Link](https://github.com/alx-system_engineering-devops/0x09-web_infrastructure_design/1-distributed_web_infrastructure)

## 2. Secured and Monitored Web Infrastructure

### Overview
This repository enhances the infrastructure by focusing on security and monitoring.

### Additional Components
- **Firewalls (3)**: Enhances security measures.
- **SSL Certificate**: Enables HTTPS for encrypted traffic.
- **Monitoring Clients (3)**: Utilizes data collectors for monitoring services.

### Explanation
- **Firewalls**: Provide additional layers of protection.
- **HTTPS**: Ensures encrypted communication for secure data transfer.
- **Monitoring**: Keeps track of system performance and detects anomalies.
- **Data Collection**: Explains how monitoring tools collect and analyze data.

### Issues
1. **SSL Termination at Load Balancer**: Poses a security risk.
2. **Single MySQL Server for Writes**: Creates a potential bottleneck.
3. **Uniform Server Components**: Potential issues in redundancy and diversity.

[Repository Link](https://github.com/alx-system_engineering-devops/0x09-web_infrastructure_design/2-secured_and_monitored_web_infrastructure)

## 3. Scale Up

### Overview
This repository addresses the need for scalability by introducing additional servers and clustering.

### Additional Components
- **Load Balancer Cluster**: HAproxy configured as a cluster.
- **Server Split**: Components (web server, application server, database) hosted on separate servers.

### Explanation
- **Load Balancer Cluster**: Improves redundancy and load distribution.
- **Server Split**: Enhances scalability and isolates components for better resource management.

[Repository Link](https://github.com/alx-system_engineering-devops/0x09-web_infrastructure_design/3-scale_up)
