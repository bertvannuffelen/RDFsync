#!/bin/sh

for i in $(find ../producer) 
do 
/config/bin/replace-env.sh $i
done

for i in $(find ../reciever) 
do 
/config/bin/replace-env.sh $i
done

