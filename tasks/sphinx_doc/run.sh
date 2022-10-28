PROJ_HOME=$(realpath .)
docker run --name sphinx -it -v ${PROJ_HOME}:/docs -w /docs sphinxdoc/sphinx /bin/bash