#!/bin/bash

RESDIR=$PWD/layver.tmp
[ -d $RESDIR ] && rm -rf $RESDIR
mkdir -p $RESDIR

ERROR=0

# Run DRC
./iic-drc.sh -o $RESDIR -b power_gate.mag || ERROR=1
# Run LVS
./iic-lvs.sh -o $RESDIR -s power_gate.sch -l power_gate.mag -c power_gate || ERROR=1

if [ ERROR = 1 ]; then
	echo "==="
	echo "[ERROR] Layout verification FAILED! Check results!"
	exit 1
else
	echo "==="
	echo "[INFO] Layout verification PASSED all checks!"
fi
