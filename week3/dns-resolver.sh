#!/bin/bash

host=$1
dns=$2
echo "dns resolution for $1"
for i in $(seq 1 254); do
	nslookup $host.$i $dns 2>/dev/null | grep -v "can't" | grep -v "^$" #i got rid of the failed ones and sent them to space
done
