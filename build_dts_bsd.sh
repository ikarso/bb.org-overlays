#!/bin/sh
cpp -P -x assembler-with-cpp -I ./include $1 | dtc -b0 -@ -O dts
echo ""
echo "${1} -> ${2}"
cpp -P -x assembler-with-cpp -I ./include $1 | dtc -b0 -@ -I dts -O dtb -o $2
