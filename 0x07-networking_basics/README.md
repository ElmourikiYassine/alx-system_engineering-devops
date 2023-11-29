# Networking Basics

## 0. OSI Model
### Overview
The OSI (Open Systems Interconnection) model is an abstract framework that describes the layered communication and design of computer networks. It helps in understanding the different components involved in communication.

### Organization
The model is structured from the lowest to the highest level:
- **Layer 1:** Transmission on physical layers (electrical impulse, light, radio signal)
- **Layer 7:** Application-specific communication (e.g., SNMP for emails, HTTP for web browsers)

### Focus in this Project
We'll primarily focus on:
- Transport layer, especially TCP/UDP
- Network layer with IP and ICMP

![OSI Model](images/osi_model.png)

### Questions
1. What is the OSI model?
   - The OSI model is a conceptual model that characterizes the communication functions of a telecommunication system without regard to their underlying internal structure and technology.

2. How is the OSI model organized?
   - From the lowest to the highest level.

Repo:
- [GitHub Repository](https://github.com/alx-system_engineering-devops)
- Directory: 0x07-networking_basics
- File: 0-OSI_model

## 1. Types of Network
### Overview
Different types of networks connect devices, ranging from local connections to wide-area networks operating over the Internet.

### Questions
1. What type of network is a computer in a local connected to?
   - LAN

2. What type of network connects offices in different buildings a few streets away?
   - WAN

3. What network is used when browsing www.google.com from a smartphone not connected to Wi-Fi?
   - Internet

Repo:
- [GitHub Repository](https://github.com/alx-system_engineering-devops)
- Directory: 0x07-networking_basics
- File: 1-types_of_network

## 2. MAC and IP Address
### Overview
MAC (Media Access Control) and IP (Internet Protocol) addresses play crucial roles in network communication.

### Questions
1. What is a MAC address?
   - The unique identifier of a network interface.

2. What is an IP address?
   - It is to devices connected to a network what a postal address is to houses.

Repo:
- [GitHub Repository](https://github.com/alx-system_engineering-devops)
- Directory: 0x07-networking_basics
- File: 2-MAC_and_IP_address

## 3. UDP and TCP
### Overview
UDP (User Datagram Protocol) and TCP (Transmission Control Protocol) are protocols for data transfer.

### Questions
1. Correct statement for the TCP box:
   - It is a protocol that transfers data in a fast way but might lose data in the process.

2. Correct statement for the UDP box:
   - It is a protocol that transfers data in a fast way and might lose data in the process.

3. Correct statement for the TCP worker:
   - May I increase the rate at which I am sending you boxes?

Repo:
- [GitHub Repository](https://github.com/alx-system_engineering-devops)
- Directory: 0x07-networking_basics
- File: 3-UDP_and_TCP

## 4. TCP and UDP Ports
### Overview
TCP and UDP ports are like windows and doors of a network device. This script displays listening ports.

### Example
```bash
sudo ./4-TCP_and_UDP_ports
```

Repo:
- [GitHub Repository](https://github.com/alx-system_engineering-devops)
- Directory: 0x07-networking_basics
- File: 4-TCP_and_UDP_ports

## 5. Is the Host on the Network
### Overview
This Bash script uses ICMP to ping an IP address passed as an argument.

### Example
```bash
./5-is_the_host_on_the_network 8.8.8.8
```

Repo:
- [GitHub Repository](https://github.com/alx-system_engineering-devops)
- Directory: 0x07-networking_basics
- File: 5-is_the_host_on_the_network

Remember to check the script outputs for valuable information about network connectivity!
