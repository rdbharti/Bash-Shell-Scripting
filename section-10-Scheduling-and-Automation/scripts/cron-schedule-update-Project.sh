#!/bin/bash

#!/bin/bash

# Author: R D Bharti
# Date Created: 18/11/2022
# Last Modified: 18/11/2022

# Description
# update and upgrade all the packages on your system every night at midnight.

# Usage
# cron-schedule-update-Project.sh


apt -y update
apt -y upgrade

# check if reboot required

if [[ -f /var/run/reboot-required ]]; then
    reboot
fi