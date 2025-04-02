
#!/bin/bash

#this is a script to check connectivity of device to site	

echo "enter the site to check connectivity of in format of www.site.com : "

#read the site to check connectivity of
read site

ping -c 1 $site &> /dev/null

if [[ $? -eq 0 ]]
then
	echo "connection to $site is successful"
else	
	echo "connection to $site is unsuccessful"
fi
