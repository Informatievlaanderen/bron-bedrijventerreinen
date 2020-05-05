#!/bin/bash


FILE=$1
OUTFILE=$2

WORKDIR=/tmp/workspace

#ogr2ogr -f CSV -lco GEOMETRY=AS_WKT -lco ENCODING=UTF-8 -skipfailures ${OUTFILE}.csv ${FILE}.gpkg 

cp ${FILE} ${WORKDIR}
pushd ${WORKDIR}
unzip ${FILE}
ogr2ogr -f CSV -lco GEOMETRY=AS_WKT -lco ENCODING=UTF-8 -skipfailures ${OUTFILE}.csv ${FILE}

popd
