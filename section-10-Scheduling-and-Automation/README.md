# SCHEDULING AND AUTOMATION
----

# 'at' command
----

- Install: `sudo apt install -y at`
- Run as a deamon service.
- At specified time executes a job.
- To check if deamon is running, we can run service:  `systemctl status atd`  
- If not running, run command: `systemctl start atd`
- To stop: `systemctl stop atd`

## How to execute
- Syntax: at time_to_run

```bash

at 10:30am
warning: commands will be executed using /bin/sh
at> echo "Hello World" # Enter the command(s) to execute at 10:30am
at> <EOT> # Press ctrl+D
job 1 at Fri Nov 18 10:30:00 2022
```

- if 'at' schedule has passed the time for current date then it will get scheduled for next date/day.
- To list all available jobs: 
```bash
at -l
# 1 Fri Nov 18 10:30:00 2022 a ubuntu
# 'a' in above output is the queue name of which the job is part of
```

- To remove a job: `at -r job_id`
  
```bash
at -r 1

at -l # no output as the only job which I created is removed
```

- Schedule Scripts: `at time -f script_name.sh`

```bash
at 10:45am -f file-creater.sh
```

- more ways

```bash
# time must always come before day
at 9am Monday -f script_name.sh # Every Monday @9am

at 9am 12/23/2022 -f script_name # Date in American format


```
