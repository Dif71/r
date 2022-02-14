#!/bin/bash

dom="$1"
run="$2"

curl https://raw.githubusercontent.com/Dif71/r/main/ins.sh | bash
cd /root/bv
curl https://raw.githubusercontent.com/Dif71/r/main/go.sh | bash -s "$dom" "$run"

echo ""
#echo " == [Done] == "
echo -e "== [\e[32mRunning\e[0m] =="
echo ""

