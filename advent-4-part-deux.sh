#!/bin/zsh
while read l; do 
line=$(echo $l | sed 's/ /\n/g' | while read l2; do
	echo $(echo $l2 | sed 's/\([a-zA-Z]\)/\1\n/g' | sort | tr -d "\n")
done | sort)
uniques=$(echo $line | uniq | wc -l);
linecnt=$(echo $line | wc -l); 
if [ $linecnt -gt $uniques ]; then 
	echo invalid: $l; 
else 
	echo valid: $l; 
fi
done
