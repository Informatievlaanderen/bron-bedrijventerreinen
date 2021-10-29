#!/bin/bash

FILE=$1
OUTFILE=$2

WORKDIR=/tmp/workspace

pushd ${WORKDIR}
wget ${FILE} -O temp.zip
$ unzip temp.zip
unzip temp.zip
ogr2ogr -f CSV -lco GEOMETRY=AS_WKT -lco ENCODING=UTF-8 -skipfailures ${OUTFILE}.csv ${FILE}

head -n 1 Bedrijventerreinperceel.csv > BedrijventerreinPerceel0.csv
head -n 1 Bedrijventerreinperceel.csv > BedrijventerreinPerceel1.csv
head -n 1 Bedrijventerreinperceel.csv > BedrijventerreinPerceel2.csv
head -n 1 Bedrijventerreinperceel.csv > BedrijventerreinPerceel3.csv
head -n 1 Bedrijventerreinperceel.csv > BedrijventerreinPerceel4.csv
head -n 1 Bedrijventerreinperceel.csv > BedrijventerreinPerceel5.csv
head -n 1 Bedrijventerreinperceel.csv > BedrijventerreinPerceel6.csv
head -n 1 Bedrijventerreinperceel.csv > BedrijventerreinPerceel7.csv
head -n 1 Bedrijventerreinperceel.csv > BedrijventerreinPerceel8.csv
head -n 1 Bedrijventerreinperceel.csv > BedrijventerreinPerceel9.csv
tail -n +2 Bedrijventerreinperceel.csv > BedrijventerreinPerceel_data.csv
head -n  10000 BedrijventerreinPerceel_data.csv >> BedrijventerreinPerceel0.csv
tail -n +10001 BedrijventerreinPerceel_data.csv >> BedrijventerreinPerceel_rest.csv
rm BedrijventerreinPerceel_data.csv
mv BedrijventerreinPerceel_rest.csv BedrijventerreinPerceel_data.csv
head -n  10000 BedrijventerreinPerceel_data.csv >> BedrijventerreinPerceel1.csv
tail -n +10001 BedrijventerreinPerceel_data.csv >> BedrijventerreinPerceel_rest.csv
rm BedrijventerreinPerceel_data.csv
mv BedrijventerreinPerceel_rest.csv BedrijventerreinPerceel_data.csv
head -n  10000 BedrijventerreinPerceel_data.csv >> BedrijventerreinPerceel2.csv
tail -n +10001 BedrijventerreinPerceel_data.csv >> BedrijventerreinPerceel_rest.csv
rm BedrijventerreinPerceel_data.csv
mv BedrijventerreinPerceel_rest.csv BedrijventerreinPerceel_data.csv
head -n  10000 BedrijventerreinPerceel_data.csv >> BedrijventerreinPerceel3.csv
tail -n +10001 BedrijventerreinPerceel_data.csv >> BedrijventerreinPerceel_rest.csv
rm BedrijventerreinPerceel_data.csv
mv BedrijventerreinPerceel_rest.csv BedrijventerreinPerceel_data.csv
head -n  10000 BedrijventerreinPerceel_data.csv >> BedrijventerreinPerceel4.csv
tail -n +10001 BedrijventerreinPerceel_data.csv >> BedrijventerreinPerceel_rest.csv
rm BedrijventerreinPerceel_data.csv
mv BedrijventerreinPerceel_rest.csv BedrijventerreinPerceel_data.csv
head -n  10000 BedrijventerreinPerceel_data.csv >> BedrijventerreinPerceel5.csv
tail -n +10001 BedrijventerreinPerceel_data.csv >> BedrijventerreinPerceel_rest.csv
rm BedrijventerreinPerceel_data.csv
mv BedrijventerreinPerceel_rest.csv BedrijventerreinPerceel_data.csv
head -n  10000 BedrijventerreinPerceel_data.csv >> BedrijventerreinPerceel6.csv
tail -n +10001 BedrijventerreinPerceel_data.csv >> BedrijventerreinPerceel_rest.csv
rm BedrijventerreinPerceel_data.csv
mv BedrijventerreinPerceel_rest.csv BedrijventerreinPerceel_data.csv
head -n  10000 BedrijventerreinPerceel_data.csv >> BedrijventerreinPerceel7.csv
tail -n +10001 BedrijventerreinPerceel_data.csv >> BedrijventerreinPerceel_rest.csv
rm BedrijventerreinPerceel_data.csv
mv BedrijventerreinPerceel_rest.csv BedrijventerreinPerceel_data.csv
head -n  10000 BedrijventerreinPerceel_data.csv >> BedrijventerreinPerceel8.csv
tail -n +10001 BedrijventerreinPerceel_data.csv >> BedrijventerreinPerceel9.csv

cp *.csv ${WORKDIR}/target
popd
