# <div align='center'> SCHEDULING AND AUTOMATION </div> 

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
at 9am Monday -f script_name.sh # Monday @9am

at 9am tomorrow -f script_name.sh

at 9am 12/23/2022 -f script_name # Date in American format

at 9am 23.11.2022 -f script_name

at 9am next week -f script_name.sh

at now + 5 minutes # 5 minutes from now
at now + 2 days # 2 days from now

```

**NOTE:** 
- at command will execute only if pc is turned on at the time. If the PC is turned off then that job will fail to execute.

- There is no way to set recurring jobs.

# CRON COMMAND
----

- It runs a deamon service.
- Check Status of Cron : ` systemctl status cron `
- To start cron service : ` systemctl start cron `
- Syntax: ` crontab -e ` # to edit the crontable.
- Syntax: minutes hour DayOfMonth month dayOfWeek   commandToExecute

```bash
crontab -e 

# minutes hour DayOfMonth month dayOfWeek   commandToExecute
*            *   *           *    MON-FRI    ~/bash-course/cron-script.sh

# The above script will run on every minute of every hour, every month, monday to friday
```

- we can also schedule cron job by editing `/etc/crontab`
- After editing resatart the cron service: `sudo systemctl restart cron`


# ANACRON
---

- Anacron can recover missed jobs i.e it will execute the job which was missed when the system was off.
- Anacron schedules are stored in file /etc/anacrontab (requires sudo privileges)
- There is no user specific anacrontab
- Anacron can not be scheduled as granular as cron can be. Anacron can not be set to execute at specific hour or minutes.

- Syntax: ` 'period in days'   'Delay in minutes'  'Job Identifier'  'Command/Script' `
- period in days: frequency in which our job is executed
  - 1 = everyday
  - 7 = every 7 day
  - @monthly = every month
- Delay in minutes : Wait a certain amount of time before anacron begin executing scheduled command.
- Job Identifier : This column allows to provide a reference name to refer back to this particular job in any log files produced by any anacron job.
- Command/Script to run

- Example:
```bash

sudo vi /etc/anacrontab

# These replace cron's entries
1       5       cron.daily      run-parts --report /etc/cron.daily
7       10      cron.weekly     run-parts --report /etc/cron.weekly
@monthly        15      cron.monthly    run-parts --report /etc/cron.monthly

# Adding Update Script of Project 15
7   30  update_upgrade_script   /home/ubuntu/bash-course/cron-schedule-update-Project.sh

```