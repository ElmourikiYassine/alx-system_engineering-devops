# Web Stack Debugging Project

## Task: Give me a page!

### Overview
In this debugging project, your goal is to get Apache to run on a Docker container and return a page containing "Hello Holberton" when querying the root of the container.

### Prerequisites
Make sure to read the Docker concept page before starting this task.

### Instructions
1. Clone the repository:
   ```bash
   git clone https://github.com/your-username/alx-system_engineering-devops.git
   ```

2. Navigate to the project directory:
   ```bash
   cd alx-system_engineering-devops/0x0D-web_stack_debugging_0
   ```

3. Open the file `0-give_me_a_page` and make the necessary changes to fix the issue described in the task.

4. Build the Docker image:
   ```bash
   docker build -t holbertonschool/265-0 .
   ```

5. Run the Docker container:
   ```bash
   docker run -p 8080:80 -d -it holbertonschool/265-0
   ```

6. Check the status of the container:
   ```bash
   docker ps
   ```

7. Curl the port 8080 to verify the page is now accessible:
   ```bash
   curl 0:8080
   ```

### Example
```bash
vagrant@vagrant:~$ docker run -p 8080:80 -d -it holbertonschool/265-0
47ca3994a4910bbc29d1d8925b1c70e1bdd799f5442040365a7cb9a0db218021
vagrant@vagrant:~$ docker ps
CONTAINER ID        IMAGE                   COMMAND             CREATED             STATUS              PORTS                  NAMES
47ca3994a491        holbertonschool/265-0   "/bin/bash"         3 seconds ago       Up 2 seconds        0.0.0.0:8080->80/tcp   vigilant_tesla
vagrant@vagrant:~$ curl 0:8080
curl: (52) Empty reply from server
vagrant@vagrant:~$

# After fixing the issue
vagrant@vagrant:~$ curl 0:8080
Hello Holberton
vagrant@vagrant:~$
```

### Submission
Paste the command(s) you used to fix the issue in your answer file.

### Repository Information
- GitHub repository: [alx-system_engineering-devops](https://github.com/your-username/alx-system_engineering-devops)
- Directory: 0x0D-web_stack_debugging_0
- File: 0-give_me_a_page
