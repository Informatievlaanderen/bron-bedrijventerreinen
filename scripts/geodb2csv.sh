#!/bin/bash


FILE=$1
OUTFILE=$2

ogr2ogr -f CSV -lco GEOMETRY=AS_WKT -lco ENCODING=UTF-8 -skipfailures ${OUTFILE}.csv ${FILE}.gpkg 
