#!/bin/bash

dom="$1"
go="$2"

refs=$(less rf.txt | shuf | sed -e ':a;N;$!ba;s/\n/,/g')
prxs=$(less px.txt | shuf | sed -e ':a;N;$!ba;s/\n/,/g')
IFS=', ' read -r -a refe <<< "$refs"
IFS=', ' read -r -a prxe <<< "$prxs"

tref=${#refe[@]}
tprx=${#prxe[@]}

if [ "$go" == "s" ]; then
	echo "python3.8 crawl.py -t $dom -r ${refe[0]} -p ${prxe[0]}"
	# python3.8 crawl.py -t "$dom" -r "${refe[0]}" -p "${prxe[0]}"

elif [ "$go" == "p" ]; then
	cou=1
	for prx in "${prxe[@]}"
	do
		idx=$(($cou % $tref))
		# echo "$cou. $prx"
		echo "$cou. python3.8 crawl.py -t $dom -r ${refe[$idx]} -p $prx"
		# python3.8 crawl.py -t "$dom" -r "${refe[$cou]}" -p "$prx"
		
		dly=$(shuf -i 3-10 -n 1)
		# echo "$dly"
		# sleep 3
		((cou++))
	done

else
	echo "Set par 2!"
	# echo "$go"
	exit 0
fi

echo ""
echo -e " == [\e[32mRunning\e[0m] == "
echo ""



