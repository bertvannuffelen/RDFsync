## scripts

| file | description | 
| ---- | ----------- |
| example_graph_table.txt | example graph table mapping files to graph URIs |
| receiving| receiving token used to lock the producer during loading|

| script | description |
| ------ | ----------- |
| virtuoso/clean_upload.sql | sql script that cleans a set of graphs and then loads all data from the upload directory | 
| virtuoso/upload_all.sql | sql script which just loads all data from the upload directory |
| virtuoso/dump.sql | OpenLink's dump script |
| virtuoso/dump_dmz.sql | Adapted version from Openlink's dump script, to be more concise | 

| script | description |
| ------ | ----------- |
| virtuoso/execute-isql.sh | execute a sql script on Virtuoso | 
| virtuoso/receiver_only_sync.sh | only load the to-be-synced data in Virtuoso | 
| virtuoso/receiver_cont_sync.sh | load the to-be-synced data in Virtuoso and then trigger another machine |
| virtuoso/transferdumps.sh | transfer the data to the other machine from the Virtuoso dump dir |

| script | description |
| ------ | ----------- |
| virtuoso/generate_dump_graphs.sh | generate the sql statements for the data to be dumped, in the file dump_graphs.sql | 
| virtuoso/example_graph_table.txt | table containing the graphs to be dumped in files | 
| virtuoso/dump_graphs.sql | the generated script |
