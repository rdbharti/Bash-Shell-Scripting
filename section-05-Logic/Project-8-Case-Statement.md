# Project: Case Statements
### Case Statements Project Brief

**Scenario**

You work as an engineer at a travel agency, and you need to develop a script that will provide users with a list of possible cities and, based on the city that they select, advise them which country that city is in.
Your Task

**Step 1:** Firstly you need to create a select statement in your script that will present to the user a list of the below cities to choose from.

Tokyo, London, Los Angeles, Moscow, Dubai, Manchester, New York, Paris Bangalore, Johannesburg, Istanbul, Milan, Abu Dhabi, Pune, Nairobi, Berlin, Karachi

**Step 2:** Secondly you need to set up a case statement that will match each of these cities as cases to their respective countries and echo out the country name to the user of the script.
**
Note:** You need to place your case statement inside of the select statement.

**Note:** Some of the cities are in the same country. You can use a | to separate these within the same case rather than creating separate cases for each.

**For example:**

A|B) commands ;; 

Code: 

```bash
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
```