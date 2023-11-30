Certainly! Here's a representation of the tasks in Markdown:

### Task 0: Change your home IP

**Requirements:**
- Write a Bash script for configuring an Ubuntu server.
- Ensure localhost resolves to 127.0.0.2.
- Ensure facebook.com resolves to 8.8.8.8.

**Example:**
```bash
$ ping localhost
$ ping facebook.com
$ sudo ./0-change_your_home_IP
$ ping localhost
$ ping facebook.com
```

In this example, before running the script, localhost resolves to 127.0.0.1, and facebook.com resolves to 157.240.11.35. After running the script, localhost resolves to 127.0.0.2, and facebook.com resolves to 8.8.8.8.

**Note:** Revert localhost to 127.0.0.1 if the script is run on a machine you'll continue to use.

**Repo:**
- GitHub repository: alx-system_engineering-devops
- Directory: 0x08-networking_basics_2
- File: 0-change_your_home_IP

### Task 1: Show attached IPs

**Requirements:**
- Write a Bash script to display all active IPv4 IPs on the machine.

**Example:**
```bash
$ ./1-show_attached_IPs | cat -e
10.0.2.15$
127.0.0.1$
```

The displayed IPs may vary depending on the machine.

**Repo:**
- GitHub repository: alx-system_engineering-devops
- Directory: 0x08-networking_basics_2
- File: 1-show_attached_IPs

### Task 2: Port listening on localhost (Advanced)

**Requirements:**
- Write a Bash script that listens on port 98 on localhost.

**Example:**
**Terminal 0:**
```bash
$ sudo ./100-port_listening_on_localhost
```

**Terminal 1:**
```bash
$ telnet localhost 98
Trying 127.0.0.2...
Connected to localhost.
Escape character is '^]'.
Hello world
test
```

**Terminal 0:**
```bash
$ sudo ./100-port_listening_on_localhost
Hello world
test
```

This script can be used across networks for debugging purposes.

**Repo:**
- GitHub repository: alx-system_engineering-devops
- Directory: 0x08-networking_basics_2
- File: 100-port_listening_on_localhost
