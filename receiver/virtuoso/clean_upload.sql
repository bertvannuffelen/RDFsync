# Virtuoso7 cleanup script

# first commit all outstanding
checkpoint;

# empty load list
delete from DB.DBA.LOAD_LIST ;

log_enable (2);

# remove old data
sparql drop silent graph <http://data.consilium.europa.eu/id/dataset/docRequests>;
sparql drop silent graph <http://data.consilium.europa.eu/id/dataset/PublicRegister>;


# schedule everything in the directory to be loaded
#  the last argument is a default value in case the .graph files are not present
ld_dir('ENV_VIRTUOSO_UPLOAD_DIR', '*.ttl.gz', 'ENV_VIRTUOSO_DEFAULT_GRAPH');
ld_dir('ENV_VIRTUOSO_UPLOAD_DIR', '*.ttl', 'ENV_VIRTUOSO_DEFAULT_GRAPH');

# start loading
rdf_loader_run();

checkpoint;
