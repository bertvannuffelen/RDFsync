#!/bin/bash
# 
# for a table ARG1, the graphs are generated
#
# the table is a file with space as a separator
#  <file> <graph>


mkdir -p ENV_RESULTS_GRAPHS_DIR

while read line ; 
do
	file=`echo $line | sed "s/\(.*\) .*/\1/g" `
	graph=`echo $line | sed "s/.* \(.*\)/\1/g" `
        
	echo $graph > ENV_RESULTS_GRAPHS_DIR/$file.graph
done < $1
