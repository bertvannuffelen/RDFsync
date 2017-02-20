#!/bin/bash
# 
# first compress all ttl files
# then copy them to the target directory
DUMPDIR=ENV_VIRTUOSO_DUMP_DIR

scp $DUMPDIR/*.ttl.gz ENV_TARGET:ENV_TARGET_DIR
scp $DUMPDIR/*.ttl    ENV_TARGET:ENV_TARGET_DIR
scp $DUMPDIR/*.graph  ENV_TARGET:ENV_TARGET_DIR
