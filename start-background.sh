#!/bin/bash
cmd=$1
outfile=$2
echo "command: ${cmd}"
echo "outfile: ${outfile}"
if [ -z $outfile ];
	then outfile="./tmp.out"
	fi
echo "execute command: nohup $cmd > $outfile 2>&1 &"	
nohup $cmd > $outfile 2>&1 &
