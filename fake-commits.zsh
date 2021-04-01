#!/bin/zsh

echo "How many days worth of fake git commits would you like?"

read days

for ((i=$days; i>0; i--))
do
	x=$(date -v-${i}d)
	echo $x
	git commit --date=${x} --allow-empty --allow-empty-message --no-edit
done
