#!/bin/bash

if [[ ! -d 100files ]]; then
    mkdir "100files"
    if [[ $? -eq 0 ]]; then
        echo "100files dir created"
        touch 100files/file_{001..100}.txt
    fi
fi