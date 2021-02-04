#!/bin/bash

FILE=$1
OUTFILE=$2

WORKDIR=/tmp/workspace


cp ${FILE} ${WORKDIR}
pushd ${WORKDIR}
unzip ${FILE}
ogr2ogr -f CSV -lco GEOMETRY=AS_WKT -lco ENCODING=UTF-8 -skipfailures ${OUTFILE}.csv ${FILE}

head -n 1 Bedrijventerreinperceel.csv > BedrijventerreinPerceel1.csv
head -n 1 Bedrijventerreinperceel.csv > BedrijventerreinPerceel2.csv
tail -n +2 Bedrijventerreinperceel.csv > BedrijventerreinPerceel_data.csv
head -n  40000 BedrijventerreinPerceel_data.csv >> BedrijventerreinPerceel1.csv
tail -n +40001 BedrijventerreinPerceel_data.csv >> BedrijventerreinPerceel2.csv

cp *.csv ${WORKDIR}/target
popd
