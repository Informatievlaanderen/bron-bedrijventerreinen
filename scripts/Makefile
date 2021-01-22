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
	cat $<
	jsonld format -q $< > $@

${OUTPUT}/Bedrijventerrein.jsonld: ${INPUT}/Bedrijventerrein.csv
	node /app/csv-renderer.js -t ${TEMPLATE}/Bedrijventerrein.template.json -i $< -o $@

${OUTPUT}/BedrijventerreinPerceel.jsonld: ${INPUT}/BedrijventerreinPerceel.csv
	node /app/csv-renderer.js -t ${TEMPLATE}/BedrijventerreinPerceel.template.json -i $< -o $@

${OUTPUT}/BeheerdeBedrijvenzone.jsonld: ${INPUT}/BeheerdeBedrijvenzone.csv
	node /app/csv-renderer.js -t ${TEMPLATE}/BeheerdeBedrijvenzone.template.json -i $< -o $@

${OUTPUT}/OntwikkelbareBedrijvenzone.jsonld: ${INPUT}/OntwikkelbareBedrijvenzone.csv
	node /app/csv-renderer.js -t ${TEMPLATE}/OntwikkelbareBedrijvenzone.template.json -i $< -o $@

${INPUT}/Bedrijventerrein.csv:
	touch ${INPUT}/Bedrijventerrein.csv

rdf: output ${TTLFILES}


clean: rm -r ${OUTPUT}

