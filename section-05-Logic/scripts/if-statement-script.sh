#!/bin/bash

if [[ 2 -gt 1 ]]; then # The semi-colon indicates end of condition command
    echo "-gt Test Passed"
fi # -gt Test Passed

# Else
if [[ 2 -lt 1 ]]; then
    echo "-lt Test Passed"
else
    echo "-lt test failed"
fi # -lt test failed

# ELIF
if [[ 2 -lt 1 ]]; then
    echo "-lt Test Passed"
elif [[ 1 -eq 1 ]]; then
    echo "-eq Test Passed"
else
    echo "-lt test failed"
fi # -lt test failed