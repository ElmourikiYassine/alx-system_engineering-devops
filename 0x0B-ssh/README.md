# alx-system_engineering-devops
## 0x0B-ssh

This repository contains solutions to tasks related to SSH configuration and usage.

### Task 0: Use a private key
**File:** [0-use_a_private_key](0x0B-ssh/0-use_a_private_key)  
**Description:** Write a Bash script that uses ssh to connect to the server using the private key `~/.ssh/school` with the user `ubuntu`. The script should follow specific requirements mentioned in the task description.

### Task 1: Create an SSH key pair
**File:** [1-create_ssh_key_pair](0x0B-ssh/1-create_ssh_key_pair)  
**Description:** Write a Bash script that creates an RSA key pair with the private key named `school`, 4096 bits, and protected by the passphrase `betty`.

### Task 2: Client configuration file
**File:** [2-ssh_config](0x0B-ssh/2-ssh_config)  
**Description:** Configure the local SSH client to use the private key `~/.ssh/school` and refuse to authenticate using a password. The SSH client configuration should be provided in the answer file.

### Task 3: Let me in!
**Directory:** [0x0B-ssh](0x0B-ssh)  
**Description:** Add the provided SSH public key to the server, allowing connection using the `ubuntu` user.

### Task 4: Client configuration file (w/ Puppet)
**File:** [100-puppet_ssh_config.pp](0x0B-ssh/100-puppet_ssh_config.pp)  
**Description:** Use Puppet to configure the SSH client file to use the private key `~/.ssh/school` and refuse authentication using a password.

Feel free to explore the individual files for detailed implementation and specific instructions for each task.
