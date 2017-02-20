#!/bin/bash
# 
# for a table ARG1, the graphs are generated
#
# the table is a file with space as a separator
#  <file> <graph>
#
# ENV_VIRTUOSO_DUMP_DIR  is the directory in which virtuoso will dump the files.
# ENV_VIRTUOSO_DUMP_DIR must be configured as part of the allowed directories in Virtuoso.


#MAP=`cat $1`
while read line ; 
do
	file=`echo $line | sed "s/\(.*\) .*/\1/g" `
	graph=`echo $line | sed "s/.* \(.*\)/\1/g" `
        
	echo "dump_one_graph('"$graph"', 'ENV_VIRTUOSO_DUMP_DIR/"$file"' );" >> dump_graphs.sql
done <$1
