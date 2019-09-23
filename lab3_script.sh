
#!/bin/bash
# Authors : Kelsey Lieberman
# Date: 9/22/2019

#Problem 1 Code:
#Make sure to document how you are solving each problem!
echo "Enter a File Name: "
read fileName			#saves file name 
echo "Enter an expression: " 
read expression			#Saves expression to search
egrep $expression $fileName		#search file for expression
numPhones=$(egrep -c '[0-9]{3}-[0-9]{3}-[0-9]{4}' $fileName)
echo "The number of Phone numbers is: $numPhones"
numEmails=$(egrep -c '.com' $fileName)
echo "The Number of Emails is: $numEmails"
echo "303 NUMBERS!!!"
egrep -o '[303]{3}-[0-9]{3}-[0-9]{4}' $fileName 
egrep '[a-zA-Z0-9]+@[a-zA-Z0-9]+\.[a-z]{2,}' $fileName | egrep -v "geocities.com" >>email_results.txt
 
