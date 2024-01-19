# alx-system_engineering-devops Repository

## Directory: 0x0A-configuration_management

### 0. Create a File

#### Task Description
Using Puppet, create a file in the `/tmp` directory with specific requirements.

**Requirements:**
- File path is `/tmp/school`
- File permission is `0744`
- File owner is `www-data`
- File group is `www-data`
- File contains the text "I love Puppet"

**Example:**
```bash
root@6712bef7a528:~# puppet-lint --version
puppet-lint 2.5.2
root@6712bef7a528:~# puppet-lint 0-create_a_file.pp
root@6712bef7a528:~# 
root@6712bef7a528:~# puppet apply 0-create_a_file.pp
Notice: Compiled catalog for 6712bef7a528.ec2.internal in environment production in 0.04 seconds
Notice: /Stage[main]/Main/File[school]/ensure: defined content as '{md5}f1b70c2a42a98d82224986a612400db9'
Notice: Finished catalog run in 0.03 seconds
root@6712bef7a528:~#
root@6712bef7a528:~# ls -l /tmp/school
-rwxr--r-- 1 www-data www-data 13 Mar 19 23:12 /tmp/school
root@6712bef7a528:~# cat /tmp/school
I love Puppet
```

**Repository:**
- GitHub repository: [alx-system_engineering-devops](https://github.com/your-username/alx-system_engineering-devops)
- Directory: 0x0A-configuration_management
- File: [0-create_a_file.pp](https://github.com/your-username/alx-system_engineering-devops/0x0A-configuration_management/0-create_a_file.pp)

### 1. Install a Package

#### Task Description
Using Puppet, install Flask from pip3 with specific version requirements.

**Requirements:**
- Install Flask
- Version must be `2.1.0`

**Example:**
```bash
root@9665f0a47391:/# puppet apply 1-install_a_package.pp
Notice: Compiled catalog for 9665f0a47391 in environment production in 0.14 seconds
Notice: /Stage[main]/Main/Package[Flask]/ensure: created
Notice: Applied catalog in 0.20 seconds
root@9665f0a47391:/# flask --version
Python 3.8.10
Flask 2.1.0
Werkzeug 2.1.1
```

**Repository:**
- GitHub repository: [alx-system_engineering-devops](https://github.com/your-username/alx-system_engineering-devops)
- Directory: 0x0A-configuration_management
- File: [1-install_a_package.pp](https://github.com/your-username/alx-system_engineering-devops/0x0A-configuration_management/1-install_a_package.pp)

### 2. Execute a Command

#### Task Description
Using Puppet, create a manifest that kills a process named `killmenow`.

**Requirements:**
- Must use the `exec` Puppet resource
- Must use `pkill`

**Example:**
```bash
# Terminal #0 - Starting my process
root@d391259bf577:/# cat killmenow
#!/bin/bash
while [[ true ]]
do
    sleep 2
done

root@d391259bf577:/# ./killmenow

# Terminal #1 - Executing my manifest
root@d391259bf577:/# puppet apply 2-execute_a_command.pp
Notice: Compiled catalog for d391259bf577.hsd1.ca.comcast.net in environment production in 0.01 seconds
Notice: /Stage[main]/Main/Exec[killmenow]/returns: executed successfully
Notice: Finished catalog run in 0.10 seconds
root@d391259bf577:/# 

# Terminal #0 - Process has been terminated
root@d391259bf577:/# ./killmenow
Terminated
```

**Repository:**
- GitHub repository: [alx-system_engineering-devops](https://github.com/your-username/alx-system_engineering-devops)
- Directory: 0x0A-configuration_management
- File: [2-execute_a_command.pp](https://github.com/your-username/alx-system_engineering-devops/0x0A-configuration_management/2-execute_a_command.pp)
