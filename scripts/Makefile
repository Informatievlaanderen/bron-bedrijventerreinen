SHELL=/bin/bash
WORKDIR=/tmp/workspace
OUTPUT=${WORKDIR}/target/output
INPUT=${WORKDIR}/target
TEMPLATE=${CIRCLE_WORKING_DIRECTORY}/templates

output:
	mkdir -p ${OUTPUT}


JSONLDFILES=${OUTPUT}/Bedrijventerrein.jsonld 

TTLFILES=$(JSONLDFILES:.jsonld=.ttl)


%.ttl: %.jsonld
	jsonld format -q $< > $@

${OUTPUT}/Bedrijventerrein.jsonld: ${INPUT}/Bedrijventerrein.csv 
	node /app/csv-renderer.js -t ${TEMPLATE}/bedrijventerrein.template -i $< -o $@

${INPUT}/Bedrijventerrein.csv:
	touch ${INPUT}/Bedrijventerrein.csv

rdf: output ${TTLFILES}

