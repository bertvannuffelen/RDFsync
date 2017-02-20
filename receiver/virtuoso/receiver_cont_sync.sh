#!/bin/bash
# synchronise to the virtuoso & then trigger a next synchronisation

INSTALLDIR=ENV_INSTALL_DIR/receiver/virtuoso

if [ -f ENV_WORK_DIR/sync ] ;
then
    echo "start" ;
    rm -f ENV_WORK_DIR/sync
    echo "upload most recent data" ;
    $INSTALLDIR/execute-isql.sh $INSTALLDIR/clean_upload.sql
    echo "dump all data" ;
    rm -rf ENV_VIRTUOSO_DUMP_DIR
    $INSTALLDIR/execute-isql.sh $INSTALLDIR/dump_dmz.sql
    sleep 10m

    $INSTALLDIR/transferdumps.sh

    scp ENV_INSTALL_DIR/producer/sync ENV_TARGET:ENV_TARGET_DIR
    echo "done" ;

else 
    echo "." ;
fi


