#!/bin/bash
while read p; do
arr=($p)
	case ${arr[1]} in
	Steven)
	ste_count=$((ste_count+1))
	;;
	Alan)
	al_count=$((al_count+1))
	;;
	Takayuki)
	tak_count=$((tak_count+1))
	;;
	Craig)
	cra_count=$((cra_count+1))
	;;
	esac
done < standup.log
echo "Steven = $ste_count"
echo "Craig = $cra_count"
echo "Alan = $al_count"
echo "Takayuki = $tak_count"
