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

ENV_RESULTS_GRAPHS_DIR | the directory where the producer stores the graph files
ENV_RESULTS_DIR | The directory where the producer stores the RDF files serialized as turtle (ttl)
ENV_SCP_TARGET_DIR | The directory where the reciever expects the files to be copied to by the producer
ENV_SCP_TARGET | The user and machine used for the copying
ENV_TARGET_SYNC_DIR | The directory where the reciever expects the sync token to be copied to by the producer
ENV_TARGET |
ENV_WORK_DIR
ENV_INSTALL_DIR | the directory in which this repository is checked out
ENV_VIRTUOSO_DUMP_DIR | The directory where Virtuoso is dumping the data as files to.
ENV_VIRTUOSO_UPLOAD_DIR | The directory where Virtuoso is reading from (a receiver) 
ENV_VIRTUOSO_DEFAULT_GRAPH | The default graph in case a file does not come with a target graph to be used to load the data into.


### Virtuoso Configuration
 * Ensure that the ENV_VIRTUOSO_DUMP_DIR and ENV_VIRTUOSO_UPLOAD_DIR are part of the DirsAllowed directive.
 * Ensure that the execute_isql.sh script is properly configured


## deployment

1. git clone this repository into $INSTALL_DIR .
2. run $INSTALL_DIR/config/start.sh
3. apply the Virtuoso configuration 
4. test
