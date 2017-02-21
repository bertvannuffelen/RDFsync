#!/bin/bash
# 
# first compress all ttl files
# then copy them to the target directory
DUMPDIR=ENV_VIRTUOSO_DUMP_DIR

scp $DUMPDIR/*.ttl.gz ENV_SCP_TARGET:ENV_SCP_TARGET_DIR
scp $DUMPDIR/*.ttl    ENV_SCP_TARGET:ENV_SCP_TARGET_DIR
scp $DUMPDIR/*.graph  ENV_SCP_TARGET:ENV_SCP_TARGET_DIR
