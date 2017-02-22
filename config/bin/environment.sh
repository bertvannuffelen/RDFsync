
export ROOTDIR=
export TARGETDIR=
export ENV_INSTALL_DIR=

export ENV_RESULTS_GRAPHS_DIR=$ROOTDIR/results/graph
export ENV_RESULTS_DIR=$ROOTDIR/results
export ENV_SCP_TARGET_DIR=$ROOTDIR/virtuoso/upload
export ENV_SCP_TARGET=user@target_machine
export ENV_TARGET_SYNC_DIR=$TARGETDIR/syncdir
export ENV_WORK_DIR=$ENV_TARGET_SYNC_DIR
export ENV_VIRTUOSO_DUMP_DIR=$ROOTDIR/virtuoso/dump
export ENV_VIRTUOSO_UPLOAD_DIR=$TARGETDIR/virtuoso/upload
export ENV_VIRTUOSO_DEFAULT_GRAPH="http://tenforce.com/id/dataset/default"

mkdir -p $ENV_RESULTS_GRAPHS_DIR
mkdir -p $ENV_RESULTS_DIR
mkdir -p $ENV_SCP_TARGET_DIR
mkdir -p $ENV_WORK_DIR
mkdir -p $ENV_VIRTUOSO_UPLOAD_DIR
mkdir -p $ENV_VIRTUOSO_DUMP_DIR
