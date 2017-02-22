# RDFsync
System synchronisation scripts for RDF files &amp; RDFstores


## Purpose
These scripts setup a synchronisation using Secure Copy (SCP) between 2 machines for RDF data.
The idea is that first the data is being produced as files on the production machine. 
Subsequently copied to the target recieving machine. On the target machine the data is loaded into a RDFstore.
Possibly it can be propagated to a next machine.

## configuration
The scripts require a substantial amount of configuration.

### Prerequisites
A SCP connection is being created between the producing and the recieving machine. This requires the creation of a [ssh key](http://sshkeychain.sourceforge.net/mirrors/SSH-with-Keys-HOWTO/SSH-with-Keys-HOWTO-4.html).

### Environmental variables

| Environment variable | description | default value |
| -------------------- | ----------- | ------------- |
| ENV_RESULTS_GRAPHS_DIR | the directory where the producer stores the graph files | |
| ENV_RESULTS_DIR | The directory where the producer stores the RDF files serialized as turtle (ttl) | |
| ENV_SCP_TARGET_DIR | The directory where the reciever expects the files to be copied to by the producer | |
| ENV_SCP_TARGET | The user and machine used for the copying | |
| ENV_TARGET_SYNC_DIR | The directory where the reciever expects the sync token to be copied to by the producer | |
| ENV_WORK_DIR | The directory where the reciever checks the sync tokens | |
| ENV_INSTALL_DIR | the directory in which this repository is checked out | |
| ENV_VIRTUOSO_DUMP_DIR | The directory where Virtuoso is dumping the data as files to. | |
| ENV_VIRTUOSO_UPLOAD_DIR | The directory where Virtuoso is reading from (a receiver)  | |
| ENV_VIRTUOSO_DEFAULT_GRAPH | The default graph in case a file does not come with a target graph to be used to load the data into. | |


### Virtuoso Configuration
 * Ensure that the ENV_VIRTUOSO_DUMP_DIR and ENV_VIRTUOSO_UPLOAD_DIR are part of the DirsAllowed directive.
 * Ensure that the execute_isql.sh script is properly configured



## deployment

### On producer machine

1. git clone this repository into $ENV_INSTALL_DIR and configure $ENV_INSTALL_DIR/config/environment.sh
2  export ENV_INSTALL_DIR=
3. run $ENV_INSTALL_DIR/config/start.sh


### On reciever machine

1. git clone this repository into $ENV_INSTALL_DIR and configure $ENV_INSTALL_DIR/config/environment.sh
2  export ENV_INSTALL_DIR=
3. run $ENV_INSTALL_DIR/config/start.sh
4. apply the Virtuoso configuration 
   4.1. when using a docker container for Virtuoso ensure that the directory are shared with the Virtuoso. 
   4.2. when using a docker container for Virtuoso ensure that execute_isql is properly configured

### test

5. test with some dummy files
6. activate a cron job on reviewer and producer to initiate and to recieve the data. The cron-job of the producer can be set to every minute.


## Limitations

 * The reciever loading is the bottleneck. A new upload cannot be started before the loading has finished. On larger dumps the loading can take an substantial amount of time, making the loading being paced by this speed.

