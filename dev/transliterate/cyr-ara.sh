#!/bin/bash

while read line
do
	echo "$line" | hfst-strings2fst  | hfst-compose-intersect -2 cyr-ara.hfst  | hfst-fst2strings 
done < "${1:-/dev/stdin}"
