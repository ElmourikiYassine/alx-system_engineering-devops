# alx-system_engineering-devops - Web Server Configuration

## Task 0: Transfer a file to your server

**File:** [0-transfer_file](0x0C-web_server/0-transfer_file)

This Bash script transfers a file from the client to a server using `scp`. It accepts four parameters:
1. Path to the file to be transferred
2. IP of the server
3. Username for scp connection
4. Path to the SSH private key used by scp

Usage:
```bash
./0-transfer_file PATH_TO_FILE IP USERNAME PATH_TO_SSH_KEY
```

Example:
```bash
./0-transfer_file some_page.html 8.8.8.8 sylvain /vagrant/private_key
```

## Task 1: Install Nginx web server

**File:** [1-install_nginx_web_server](0x0C-web_server/1-install_nginx_web_server)

This Bash script installs Nginx on a server and configures it to listen on port 80. When querying Nginx at its root with a GET request, it returns a page containing the string "Hello World!"

Usage:
```bash
./1-install_nginx_web_server
```

## Task 2: Setup a domain name

**File:** [2-setup_a_domain_name](0x0C-web_server/2-setup_a_domain_name)

This task guides you on obtaining a free .tech domain for 1 year. Provide the domain name (e.g., myschool.tech) and configure DNS records with an A entry to point to your web-01 IP address.

Example:
```bash
cat 2-setup_a_domain_name
myschool.tech
```

## Task 3: Redirection

**File:** [3-redirection](0x0C-web_server/3-redirection)

This Bash script configures Nginx to redirect `/redirect_me` to another page with a "301 Moved Permanently" status.

Example:
```bash
curl -sI 34.198.248.145/redirect_me/
```

## Task 4: Not found page 404

**File:** [4-not_found_page_404](0x0C-web_server/4-not_found_page_404)

This script configures Nginx to have a custom 404 page that returns an HTTP 404 error code and contains the string "Ceci n'est pas une page."

Example:
```bash
curl -sI 34.198.248.145/xyz
curl 34.198.248.145/xyzfoo
```

## Task 5: Install Nginx web server (w/ Puppet)

**File:** [7-puppet_install_nginx_web_server.pp](0x0C-web_server/7-puppet_install_nginx_web_server.pp)

This Puppet manifest installs and configures Nginx on an Ubuntu machine, making it listen on port 80. It also performs a 301 redirect when querying `/redirect_me`.

Usage:
```bash
sudo puppet apply 7-puppet_install_nginx_web_server.pp
```

Note: Make sure to replace "redirect_url" in the manifest with the actual URL you want to redirect to.
