#!/bin/bash

dom="$1"
run="$s2"

curl https://raw.githubusercontent.com/Dif71/r/main/ins.sh | bash
cd /root/bv
curl https://raw.githubusercontent.com/Dif71/r/main/go.sh | bash -s "$dom" "$run"

echo ""
echo " == [Done] == "
echo ""

