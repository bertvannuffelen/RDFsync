#!/bin/bash
# synchronize only virtuoso

INSTALLDIR=ENV_INSTALL_DIR/receiver/virtuoso

if [ -f ENV_WORK_DIR/sync ] ;
then
    echo "start" ;
    rm -f ENV_WORK_DIR/sync
    echo "upload most recent data" ;
    $INSTALLDIR/execute-isql.sh $INSTALLDIR/clean_upload.sql
    echo "done" ;

else 
    echo "." ;
fi


