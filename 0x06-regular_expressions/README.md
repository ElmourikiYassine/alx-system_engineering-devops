# Regular Expressions Tasks

## Task 0: Simply Matching School

**Requirements:**
- The regular expression must match "School."
- Create a Ruby script that accepts one argument and passes it to a regular expression matching method.

**Example:**
```bash
sylvain@ubuntu$ ./0-simply_match_school.rb School | cat -e
School$
sylvain@ubuntu$ ./0-simply_match_school.rb "Best School" | cat -e
School$
sylvain@ubuntu$ ./0-simply_match_school.rb "School Best School" | cat -e
SchoolSchool$
sylvain@ubuntu$ ./0-simply_match_school.rb "Grace Hopper" | cat -e
$
```

**Repo:**
- GitHub repository: [alx-system_engineering-devops](https://github.com/username/alx-system_engineering-devops)
- Directory: 0x06-regular_expressions
- File: 0-simply_match_school.rb

## Task 1: Repetition Token #0

**Requirements:**
- Find the regular expression that matches the specified cases.
- Create a Ruby script that accepts one argument and passes it to a regular expression matching method.

**Repo:**
- GitHub repository: [alx-system_engineering-devops](https://github.com/username/alx-system_engineering-devops)
- Directory: 0x06-regular_expressions
- File: 1-repetition_token_0.rb

## Task 2: Repetition Token #1

**Requirements:**
- Find the regular expression that matches the specified cases.
- Create a Ruby script that accepts one argument and passes it to a regular expression matching method.

**Repo:**
- GitHub repository: [alx-system_engineering-devops](https://github.com/username/alx-system_engineering-devops)
- Directory: 0x06-regular_expressions
- File: 2-repetition_token_1.rb

## Task 3: Repetition Token #2

**Requirements:**
- Find the regular expression that matches the specified cases.
- Create a Ruby script that accepts one argument and passes it to a regular expression matching method.

**Repo:**
- GitHub repository: [alx-system_engineering-devops](https://github.com/username/alx-system_engineering-devops)
- Directory: 0x06-regular_expressions
- File: 3-repetition_token_2.rb

## Task 4: Repetition Token #3

**Requirements:**
- Find the regular expression that matches the specified cases.
- Create a Ruby script that accepts one argument and passes it to a regular expression matching method.
- The regex should not contain square brackets.

**Repo:**
- GitHub repository: [alx-system_engineering-devops](https://github.com/username/alx-system_engineering-devops)
- Directory: 0x06-regular_expressions
- File: 4-repetition_token_3.rb

## Task 5: Not quite HBTN yet

**Requirements:**
- The regular expression must exactly match a string that starts with 'h,' ends with 'n,' and can have any single character in between.
- Create a Ruby script that accepts one argument and passes it to a regular expression matching method.

**Example:**
```bash
sylvain@ubuntu$ ./5-beginning_and_end.rb 'hn' | cat -e
$
sylvain@ubuntu$ ./5-beginning_and_end.rb 'hbn' | cat -e
hbn$
sylvain@ubuntu$ ./5-beginning_and_end.rb 'hbtn' | cat -e
$
sylvain@ubuntu$ ./5-beginning_and_end.rb 'h8n' | cat -e
h8n$
sylvain@ubuntu$
```

**Repo:**
- GitHub repository: [alx-system_engineering-devops](https://github.com/username/alx-system_engineering-devops)
- Directory: 0x06-regular_expressions
- File: 5-beginning_and_end.rb

## Task 6: Call me maybe

**Requirement:**
- The regular expression must match a 10-digit phone number.

**Example:**
```bash
sylvain@ubuntu$ ./6-phone_number.rb 4155049898 | cat -e
4155049898$
sylvain@ubuntu$ ./6-phone_number.rb " 4155049898" | cat -e
$
sylvain@ubuntu$ ./6-phone_number.rb "415 504 9898" | cat -e
$
sylvain@ubuntu$ ./6-phone_number.rb "415-504-9898" | cat -e
$
sylvain@ubuntu$
```

**Repo:**
- GitHub repository: [alx-system_engineering-devops](https://github.com/username/alx-system_engineering-devops)
- Directory: 0x06-regular_expressions
- File: 6-phone_number.rb

## Task 7: OMG WHY ARE YOU SHOUTING?

**Requirement:**
- The regular expression must only match capital letters.

**Example:**
```bash
sylvain@ubuntu$ ./7-OMG_WHY_ARE_YOU_SHOUTING.rb "I realLy hOpe VancouvEr posseSs Yummy Soft vAnilla Dupper Mint Ice Nutella cream" | cat -e
ILOVESYSADMIN$
sylvain@ubuntu$ ./7-OMG_WHY_ARE_YOU_SHOUTING.rb "WHAT do you SAY?" | cat -e
WHATSAY$
sylvain@ubuntu$ ./7-OMG_WHY_ARE_YOU_SHOUTING.rb "cannot read you" | cat -e
$
sylvain@ubuntu$
```

**Repo:**
- GitHub repository: [alx-system_engineering-devops](https://github.com/username/alx-system_engineering-devops)
- Directory: 0x06-regular_expressions
- File: 7-OMG_WHY_ARE_YOU_SHOUTING.rb

## Task 8: Textme (Advanced)

**Requirements:**
- Your script should output: [SENDER],[RECEIVER],[FLAGS]
- The sender and receiver include phone numbers or names (with country codes if present).
- Parse the flags used in the transaction.

**Repo:**
- GitHub repository: [alx-system_engineering-devops](https://github.com/username/alx-system_engineering-devops)
- Directory: 0x06-regular_expressions
- File: 100-textme.rb
