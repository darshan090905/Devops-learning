# 📄 Documentation – Milestone 5: Computer Network Basics

## 🌐 Computer Network
- Communication between two or more network interfaces.  
- Components: cables, NIC (Network Interface Card), switches, routers, OS software.  

---

## 📶 OSI Model (ISO, 1984 – 7 Layers)
1. **Physical Layer** – Transmission of raw bits (cables, signals).  
2. **Data Link Layer** – Frames, MAC addresses, switches.  
3. **Network Layer** – Logical addressing, routing (IP, routers).  
4. **Transport Layer** – Reliable delivery (TCP, UDP).  
5. **Session Layer** – Manages sessions between applications.  
6. **Presentation Layer** – Data translation, encryption, compression.  
7. **Application Layer** – Interfaces for end-user services (HTTP, FTP, SMTP).  

### Key Concepts
- **Services** – Actions offered to higher layers.  
- **Protocols** – Rules for communication.  
- **Interfaces** – Interaction between layers.  

---

## 🌍 Types of Networks (by Geography)
- **LAN** – Local Area Network (e.g., two PCs in a room).  
- **MAN** – Metropolitan Area Network (e.g., metro city trains).  
- **WAN** – Wide Area Network (e.g., Internet).  
- **CAN** – Campus Area Network (e.g., college campus).  
- **PAN** – Personal Area Network (e.g., Bluetooth, Hotspot).  

---

## 🔀 Devices
- **Switches** – Connect multiple devices, share resources.  
- **Routers** – Connect multiple networks, route data.  

---

## 🌐 IP Addressing
- **IPv4 Range:** 0.0.0.0 – 255.255.255.255  
- **Public IP:** Provided by ISP/Cloud (e.g., 54.86.23.90)  
- **Private IP:** Used inside local networks  
  - Class A → 10.0.0.0 – 10.255.255.255  
  - Class B → 172.16.0.0 – 172.31.255.255  
  - Class C → 192.168.0.0 – 192.168.255.255  

---

## 📡 Protocols
### TCP (Transmission Control Protocol)
- Reliable, connection-oriented, 3-way handshake, error detection.  
- Used in HTTP, HTTPS, FTP.  

### UDP (User Datagram Protocol)
- Faster, connectionless, no sequencing, no ACK.  
- Used in DNS, DHCP, ARP.  

---

## 🔑 Protocols & Ports
- **DNS:** 53 (UDP/TCP)  
- **HTTP:** 80 (TCP)  
- **HTTPS:** 443 (TCP)  
- **SMTP:** 25 (TCP)  
- **POP3:** 109, 110 (TCP)  
- **SNMP:** 161,162 (UDP/TCP)  
- **Telnet:** 23 (TCP)  
- **FTP:** 20, 21 (TCP)  
- **SSH:** 22 (TCP)  

---

## 🖥️ Networking Commands
- `ifconfig` → Show/configure interfaces  
- `ip addr show` → Show IP addresses  
- `ping` → Test connectivity  
- `traceroute` → Show packet path  
- `netstat -antp` → Show active connections  
- `ss -tunlp` → Show listening ports  
- `nmap` → Scan for open ports/services  
- `dig` → Query DNS records  
- `nslookup` → DNS info lookup  
- `route -n` → Show routing table  
- `arp` → Show/manipulate ARP cache  
- `mtr` → Ping + Traceroute (real-time)  
- `telnet` → Test remote connection  

