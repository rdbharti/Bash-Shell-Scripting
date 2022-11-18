#!/bin/bash

apt -y update
apt -y upgrade

# check if reboot required

if [[ -f /var/run/reboot-required ]]; then
    reboot
fi