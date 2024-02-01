# Web Stack Debugging 1

## Task 0: Nginx Likes Port 80

### Description
Debug the issue preventing Nginx from listening on port 80 in an Ubuntu container. Create a Bash script to automate the fix.

### Instructions
1. Ensure Nginx is running and listening on port 80 for all active IPv4 IPs.
2. Write a Bash script for configuring the server to meet the requirements.
3. Verify the fix using the provided curl command.

### Steps
1. Use debugging skills to identify the issue.
2. Install necessary tools and manipulate containers as needed.
3. Write a Bash script (`0-nginx_likes_port_80`) for the fix.
4. Execute the script to confirm the resolution.

### Example Usage
```bash
root@966c5664b21f:/# curl 0:80
curl: (7) Failed to connect to 0 port 80: Connection refused
root@966c5664b21f:/#
root@966c5664b21f:/# ./0-nginx_likes_port_80 > /dev/null 2&>1
root@966c5664b21f:/#
root@966c5664b21f:/# curl 0:80
<!DOCTYPE html>
<html>
<head>
<title>Welcome to nginx!</title>
<style>
    body {
        width: 35em;
        margin: 0 auto;
        font-family: Tahoma, Verdana, Arial, sans-serif;
    }
</style>
</head>
<body>
<h1>Welcome to nginx!</h1>
<!-- More HTML content -->
</body>
</html>
root@966c5664b21f:/#

### Repository Information
- GitHub Repository: [alx-system_engineering-devops](https://github.com/username/alx-system_engineering-devops)
- Directory: 0x0E-web_stack_debugging_1
- File: 0-nginx_likes_port_80

---

## Task 1: Make it Sweet and Short

### Description
Build on the fix from Task 0 and create a shorter Bash script with specific constraints.

### Instructions
1. Keep the Bash script to 5 lines or less.
2. Do not use `;`, `&&`, `wget`, or execute the previous script.
3. Ensure the `service` command reports that Nginx is not running.

### Steps
1. Implement a concise Bash script (`1-debugging_made_short`).
2. Execute the script and confirm the fix using the provided curl command.
3. Verify that the `service` command reports Nginx as not running.

### Example Usage
```bash
root@966c5664b21f:/# curl 0:80
curl: (7) Failed to connect to 0 port 80: Connection refused
root@966c5664b21f:/#
root@966c5664b21f:/# cat -e 1-debugging_made_short | wc -l
5
root@966c5664b21f:/# ./1-debugging_made_short
root@966c5664b21f:/#
root@966c5664b21f:/# curl 0:80
<!DOCTYPE html>
<html>
<!-- HTML content -->
</html>
root@966c5664b21f:/#
root@966c5664b21f:/# service nginx status
 * nginx is not running
root@966c5664b21f:/#

### Repository Information
- GitHub Repository: [alx-system_engineering-devops](https://github.com/username/alx-system_engineering-devops)
- Directory: 0x0E-web_stack_debugging_1
- File: 1-debugging_made_short
