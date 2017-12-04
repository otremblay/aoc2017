#!/bin/zsh
while read l; do 
line=$(echo $l | sed 's/ /\n/g' | sort); 
uniques=$(echo $line | uniq | wc -l);
linecnt=$(echo $line | wc -l); 
if [ $linecnt -gt $uniques ]; then 
	echo invalid: $l; 
else 
	echo valid: $l; 
fi
done
