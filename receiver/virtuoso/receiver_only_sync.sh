#!/bin/bash
# synchronize only virtuoso

INSTALLDIR=ENV_INSTALL_DIR/receiver/virtuoso

if [ -f ENV_WORK_DIR/sync ] ;
then
    if [ -f ENV_WORK_DIR/receiving ] ; 
    then
	# there is already a receiving operation started. Wait until it is finished to start another one.
	echo "." 
    else
	echo "start" ;
	rm -f ENV_WORK_DIR/sync
	cp ENV_INSTALL_DIR/receiver/receiver ENV_WORK_DIR/receiving
    
	echo "upload most recent data" ;
    	$INSTALLDIR/execute-isql.sh $INSTALLDIR/clean_upload.sql

	# the sleep has to be checked.
        # It can only be checked via implementing a poll on a virtuoso loading table 
	sleep 10m

    	echo "done" ;
	rm -f ENV_WORK_DIR/receiving
   fi

else 
    echo "." ;
fi


