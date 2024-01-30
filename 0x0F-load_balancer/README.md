# Project: Load Balancer Configuration

## Task 0: Double the Number of Webservers

### Overview
In this task, the goal is to configure `web-02` to be identical to `web-01`. A Bash script created during a previous web server project will be utilized for this purpose. Additionally, a custom Nginx response header needs to be added to track which web server is handling HTTP requests.

### Requirements
1. Configure Nginx on `web-01` and `web-02` to include a custom HTTP response header.
   - Header Name: `X-Served-By`
   - Header Value: Hostname of the server Nginx is running on.
2. Write a script (`0-custom_http_response_header`) that configures a new Ubuntu machine to meet the specified requirements.
3. Ignore SC2154 for shellcheck.

### Example
```bash
# Example usage after running the script
$ curl -sI 34.198.248.145 | grep X-Served-By
X-Served-By: 03-web-01

$ curl -sI 54.89.38.100 | grep X-Served-By
X-Served-By: 03-web-02
```

### Repository Information
- GitHub Repository: [alx-system_engineering-devops](https://github.com/yourusername/alx-system_engineering-devops)
- Directory: `0x0F-load_balancer`
- File: `0-custom_http_response_header`

---

## Task 1: Install Your Load Balancer

### Overview
This task involves installing and configuring HAproxy on the `lb-01` server. The load balancer should distribute traffic to `web-01` and `web-02` using a round-robin algorithm. Additionally, HAproxy should be manageable via an init script.

### Requirements
1. Install and configure HAproxy on `lb-01`.
2. Configure HAproxy to distribute traffic using a round-robin algorithm to `web-01` and `web-02`.
3. Ensure HAproxy can be managed via an init script.
4. Ensure servers are configured with the hostnames `[STUDENT_ID]-web-01` and `[STUDENT_ID]-web-02`.
5. Write a Bash script (`1-install_load_balancer`) that configures a new Ubuntu machine to meet the specified requirements.

### Example
```bash
# Example usage after installing and configuring HAproxy
$ curl -Is 54.210.47.110
HTTP/1.1 200 OK
Server: nginx/1.4.6 (Ubuntu)
Date: Mon, 27 Feb 2017 06:12:17 GMT
Content-Type: text/html
Content-Length: 30
Last-Modified: Tue, 21 Feb 2017 07:21:32 GMT
Connection: keep-alive
ETag: "58abea7c-1e"
X-Served-By: 03-web-01
Accept-Ranges: bytes

$ curl -Is 54.210.47.110
HTTP/1.1 200 OK
Server: nginx/1.4.6 (Ubuntu)
Date: Mon, 27 Feb 2017 06:12:19 GMT
Content-Type: text/html
Content-Length: 612
Last-Modified: Tue, 04 Mar 2014 11:46:45 GMT
Connection: keep-alive
ETag: "5315bd25-264"
X-Served-By: 03-web-02
Accept-Ranges: bytes
```

### Repository Information
- GitHub Repository: [alx-system_engineering-devops](https://github.com/yourusername/alx-system_engineering-devops)
- Directory: `0x0F-load_balancer`
- File: `1-install_load_balancer`
