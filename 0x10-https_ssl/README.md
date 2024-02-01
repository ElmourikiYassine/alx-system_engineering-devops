## Task 0: World Wide Web

### Requirements:
- Configure your domain zone with the following subdomains:
  - www: Points to your load balancer IP (lb-01)
  - lb-01: Points to your lb-01 IP
  - web-01: Points to your web-01 IP
  - web-02: Points to your web-02 IP
- Bash script to display subdomain information
- Bash script should accept 2 arguments:
  - domain (mandatory): Domain name to audit
  - subdomain (optional): Specific subdomain to audit
- Output format: `The subdomain [SUB_DOMAIN] is a [RECORD_TYPE] record and points to [DESTINATION]`
- When only the domain is provided, display information for its subdomains www, lb-01, web-01, and web-02 in that order
- When domain and subdomain parameters are provided, display information for the specified subdomain
- Ignore shellcheck case SC2086
- Must use awk and at least one Bash function
- No need to handle edge cases such as empty parameters or nonexistent domain/subdomains

### Example Usage:

```bash
./0-world_wide_web holberton.online
# Output:
# The subdomain www is a A record and points to 54.210.47.110
# The subdomain lb-01 is a A record and points to 54.210.47.110
# The subdomain web-01 is a A record and points to 34.198.248.145
# The subdomain web-02 is a A record and points to 54.89.38.100

./0-world_wide_web holberton.online web-02
# Output:
# The subdomain web-02 is a A record and points to 54.89.38.100
```

## Task 1: HAproxy SSL Termination

### Requirements:
- Terminate SSL on HAproxy
- Create a certificate using certbot
- Configure HAproxy to accept encrypted traffic for the subdomain www
- HAproxy must listen on TCP port 443
- HAproxy must accept SSL traffic
- HAproxy must serve encrypted traffic returning the / of your web server
- Root of your domain should display "Holberton School"
- Share HAproxy config as an answer file (`/etc/haproxy/haproxy.cfg`)
- HAproxy version must be 1.5 or higher

### Example Usage:

```bash
curl -sI https://www.holberton.online
# Output:
# HTTP/1.1 200 OK
# Server: nginx/1.4.6 (Ubuntu)
# Date: Tue, 28 Feb 2017 01:52:04 GMT
# Content-Type: text/html
# Content-Length: 30
# Last-Modified: Tue, 21 Feb 2017 07:21:32 GMT
# ETag: "58abea7c-1e"
# X-Served-By: 03-web-01
# Accept-Ranges: bytes

curl https://www.holberton.online
# Output:
# Holberton School for the win!
```

### Repository Structure:

- GitHub Repository: alx-system_engineering-devops
- Directory: 0x10-https_ssl
- Files:
  - 0-world_wide_web
  - 1-haproxy_ssl_termination
