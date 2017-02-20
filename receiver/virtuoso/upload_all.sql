# schedule everything in the directory to be loaded
#  the last argument is a default value in case the .graph files are not present

ld_dir('ENV_VIRTUOSO_UPLOAD_DIR', '*.ttl.gz', 'ENV_VIRTUOSO_DEFAULT_GRAPH');

# start loading
rdf_loader_run();

checkpoint;
