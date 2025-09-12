#!/bin/bash

for i in {2..50};
do 
	ping -c 1 -W 1 10.0.5.$i | grep "bytes from" | cut -d" " -f4 | tr -d ":" >> sweep.txt;
done
