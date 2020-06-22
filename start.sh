#!/bin/bash
cmd=$1
outfile=$2
echo "command is ${cmd}"
echo "outfile is ${outfile}"
if [ -z $outfile ];
	then outfile="./tmp.out"
	fi
echo "execute the command  nohup $cmd > $outfile 2>&1 &"	
nohup $cmd > $outfile 2>&1 &
