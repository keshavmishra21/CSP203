#!/bin/bash

echo "1. Add a firewall rule"
echo "2. Delete firewall rule"
echo "3. Check the block status of a website"

read choice

if [ "$choice" -eq 1 ]
then
echo "Enter IP_ADRESS"
read ip_address
echo "Enter DOMAIN"
read domain
echo "Enter PORT"
read port
echo "$ip_address" | grep -E "[0-9]{3}\.[0-9]{3}\.[0-9]{3}\.[0-9]{3}" >> firewall_rules.txt
echo "$domain" | grep -E "www.*.com" >> DNS_mapping.txt
echo "$ip_address" | grep -E "[0-9]{3}\.[0-9]{3}\.[0-9]{3}\.[0-9]{3}" >> DNS_mapping.txt
echo "$port" | grep -E "[0-9]{4}" >> firewall_rules.txt

fi

if [ "$choice" -eq 2 ]
then
echo "Enter DOMAIN"
read domain
if echo "$domain" | grep -qE "www.*.com"
then
sed -i "s/"$domain*"//g" DNS_mapping.txt
fi
echo "Enter PORT"
read port
if echo "$port" | grep -qE "[0-9]{4}"
then
sed -i "s/"*,$port"//g" firewall_rules.txt
fi

fi

if [ "$choice" -eq 3 ]
then
echo "Enter DOMAIN"
read domain
echo "Enter PORT"
read port
fi
