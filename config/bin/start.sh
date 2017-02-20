#!/bin/sh

BIN=.

for i in $(find ../../producer) 
do 
	echo $i
	$BIN/replace-env.sh $i
done

for i in $(find ../../receiver) 
do 
	$BIN/replace-env.sh $i
done

