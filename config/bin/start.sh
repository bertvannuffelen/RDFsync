#!/bin/sh

BIN=$ENV_INSTALL_DIR/config/bin

for i in $(find ../../producer -type f) 
do 
	echo $i
	$BIN/replace-env.sh $i
done

for i in $(find ../../receiver -type f) 
do 
	echo $i
	$BIN/replace-env.sh $i
done

