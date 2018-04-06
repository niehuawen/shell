#!/bin/bash

function loopFile(){
	for line in `cat $1`;do
		awk -v var=$line 'BEGIN{ sum=0 } {if(var==$1){ sum+=1}} END{ print var,"\t", sum }' $2
	done
}

loopFile $1 $2
