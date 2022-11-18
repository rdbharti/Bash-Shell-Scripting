#!/bin/bash

# if [[ ! -d "100files" ]]; then
#     mkdir "100files"
#     if [[ $? -eq 0 ]]; then
#         echo "100files dir created"
#     fi
# fi

# touch 100files/file_{001..100}.txt

mkdir 100files
touch 100files/file{001..100}.txt