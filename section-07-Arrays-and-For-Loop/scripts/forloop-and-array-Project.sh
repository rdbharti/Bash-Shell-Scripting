#!/bin/bash

# Author: R D Bharti
# Date Created: 17/11/2022
# Last Modified: 17/11/2022

# Description
# obtain the header information received when trying to access the homepage for all these sites, 
# and store these headers in individual text files.

# Usage
# forloo-and-array-Project.sh

readarray -t urls < urls.txt

for url in "${urls[@]}"
do
    file_name=$(echo $url | cut -d "." -f 2) 
    curl --head "${url}" > "${file_name}.txt"
done

########################################

# cut -d "." -f 2 < www.facebook.com
# delimiter .
# words cut out is 
#     www
#     facebook
#     com
# -f 2 means 2nd element i.e facebook


############################################