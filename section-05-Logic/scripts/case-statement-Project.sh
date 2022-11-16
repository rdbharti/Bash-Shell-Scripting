#!/bin/bash

# Author: R D Bharti
# Date Created: 16/11/2022
# Last Modified: 16/11/2022

# Description
# provide users with a list of possible cities and,
#based on the city that they select,-advise them which country that city is in.

# Usage
# case-statement-Project.sh

PS3="Select a City: "
select city in Tokyo London "Los Angeles" Moscow Dubai Manchester "New York" Paris Bangalore Johannesburg Istanbul Milan "Abu Dhabi" Pune Nairobi Berlin Karachi;
do
echo "City: ${city}"
break
done

case "$city" in
     "Tokyo") echo "Country: Japan";;
     "London") echo "Country: United Kingdom";;
     "Los Angeles") echo "Country: USA";;
     "Moscow") echo "Country: Russia ";;
     "Dubai") echo "Country: Saudi Arabia";;
     "Manchester") echo "Country: England";;
     "New York") echo "Country: USA";;
     "Paris") echo "Country: France";;
     "Bangalore") echo "Country: India";;
     "Johannesburg") echo "Country: South Africa";;
     "Istanbul") echo "Country: Turkey";;
     "Milan") echo "Country: Italy";;
     "Abu Dhabi") echo "Country: Saudi Arabia";;
     "Pune") echo "Country: India";;
     "Nairobi") echo "Country: Kenya";;
     "Berlin") echo "Country: Germany";;
     "Karachi") echo "Country: Pakistan";;
     *) echo "Invalid Input";;
esac