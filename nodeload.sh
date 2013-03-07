#!/bin/bash

nodeload=`cat /proc/loadavg | awk '{print $1}'`
nodeloadint=`echo ${nodeload} | awk -F . '{print $1}'`
numcpus=`cat /proc/cpuinfo | grep -c processor`

nodemem=`free | grep Mem`
nodememused=$((`echo ${nodemem} | awk '{print $3}'`-`echo ${nodemem} | awk '{print $7}'` - `echo ${nodemem} | awk '{print $6}'`))
nodememtotal=`echo ${nodemem} | awk '{print $2}'`
nodemem=$((100*${nodememused}/${nodememtotal}))

if [ $nodeloadint -ge $((100*${numcpus}/5*4/100)) ]
then
	echo -en "\[\e[1;31m\][$nodeload]\[\e[0m\]"
elif [ $nodeloadint -ge $((100*${numcpus}/2*1/100)) ]
then
	echo -en "\[\e[1;33m\][$nodeload]\[\e[0m\]"
else
	echo -en "\[\e[1;32m\][$nodeload]\[\e[0m\]"
fi

if [ $nodemem -ge 80 ]
then
	echo -en "\[\e[1;31m\][$nodemem%]\[\e[0m\]"
elif [ $nodemem -ge 50 ]
then
	echo -en "\[\e[1;33m\][$nodemem%]\[\e[0m\]"
else
	echo -en "\[\e[1;32m\][$nodemem%]\[\e[0m\]"
fi
