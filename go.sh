#!/bin/bash

dom="$1"
run="$2"

refs=$(less ref.txt | shuf | sed -e ':a;N;$!ba;s/\n/,/g')
prxs=$(less p10.txt | shuf | sed -e ':a;N;$!ba;s/\n/,/g')
IFS=', ' read -r -a refe <<< "$refs"
IFS=', ' read -r -a prxe <<< "$prxs"

tref=${#refe[@]}
tprx=${#prxe[@]}

if [ $run == "s" ];then
	echo "python3.8 crawl.py -t $dom -r ${refe[0]} -p ${prxe[0]}"
	# python3.8 crawl.py -t "$dom" -r "${refe[0]}" -p "${prxe[0]}"

elif [ $run == "p" ]; then
	cou=1
	for prx in "${prxe[@]}"
	do
		# [ $cou > 3 ] && cou=1
		idx=$(($cou % $tref))
		# echo "$cou. $prx"
		echo "python3.8 crawl.py -t $dom -r ${refe[$idx]} -p $prx"
		
		# python3.8 crawl.py -t "$dom" -r "${refe[$cou]}" -p "$prx"
		
		# echo "$(( ( RANDOM % 10 )  + 3 ))"
		dly=$(shuf -i 3-10 -n 1)
		echo "$dly"
		# sleep 3
		((cou++))
	done

else
	echo "Set par 2!"
	exit 0
fi
