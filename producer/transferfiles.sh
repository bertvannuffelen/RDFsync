#!/bin/bash
# 
# first compress all ttl files
# then copy them to the target directory

# daily rotate
DATE=`date +"%m%b%y"`

rm -rf ENV_RESULTS_DIR/$DATE
mkdir -p ENV_RESULTS_DIR/$DATE
cp ENV_RESULTS_DIR/*.ttl ENV_RESULTS_DIR/$DATE
cp ENV_RESULTS_GRAPHS_DIR/*.graph ENV_RESULTS_GRAPHS_DIR/$DATE

cd "ENV_RESULTS_DIR/$DATE"
gzip *.ttl 

scp *.ttl.gz ENV_SCP_TARGET:ENV_SCP_TARGET_DIR
scp *.graph ENV_SCP_TARGET:ENV_SCP_TARGET_DIR

scp ENV_INSTALL_DIR/producer/sync ENV_SCP_TARGET:ENV_TARGET_SYNC_DIR/sync
