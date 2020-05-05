SHELL=/bin/bash
WORKDIR=/tmp/workdir
OUTPUT=${WORKDIR}/target/output
INPUT=${WORKDIR}/target/
TEMPLATE=${CIRCLE_WORKING_DIRECTORY}/template

output:
	mkdir -p ${OUTPUT}


JSONLDFILES=${OUTPUT}/bedrijventerrein.jsonld 

TTLFILES=$(JSONLDFILES:.jsonld=.ttl)


%.ttl: %.jsonld
	jsonld format -q $< > $@

${OUTPUT}/bedrijventerrein.jsonld: ${INPUT}/bedrijventerrein.csv ${TEMPLATE}/bedrijventerrein.template
	node /app/json-renderer.js -t ${TEMPLATE}/bedrijventerrein.template -i $< -o $@

rdf: output ${TTLFILES}

