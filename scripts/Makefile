SHELL=/bin/bash
WORKDIR=/tmp/workspace
OUTPUT=${WORKDIR}/target/output
INPUT=${WORKDIR}/target
TEMPLATE=${CIRCLE_WORKING_DIRECTORY}/templates

${WORKDIR}/Aanbieder.jsonld: ${INPUT}/BedrijventerreinperceelAanbieding.csv
	node /app/csv-renderer.js -t ${TEMPLATE}/Aanbieder.template.json -i $< -o $@ >> /tmp/workspace/convert.log

${WORKDIR}/Bedrijventerrein.jsonld: ${INPUT}/Bedrijventerrein.csv
	node /app/csv-renderer.js -t ${TEMPLATE}/Bedrijventerrein.template.json -i $< -o $@ >> /tmp/workspace/convert.log

${WORKDIR}/BedrijventerreinPerceel.jsonld: ${INPUT}/BedrijventerreinPerceel.csv
	node /app/csv-renderer.js -t ${TEMPLATE}/BedrijventerreinPerceel.template.json -i $< -o $@ >> /tmp/workspace/convert.log

${WORKDIR}/BedrijventerreinPerceel%.jsonld: ${INPUT}/BedrijventerreinPerceel%.csv
	node /app/csv-renderer.js -t ${TEMPLATE}/BedrijventerreinPerceel.template.json -i $< -o $@ >> /tmp/workspace/convert.log

${WORKDIR}/BedrijventerreinperceelBeperking.jsonld: ${INPUT}/BedrijventerreinperceelBeperking.csv
	node /app/csv-renderer.js -t ${TEMPLATE}/BedrijventerreinperceelBeperking.template.json -i $< -o $@ >> /tmp/workspace/convert.log

${WORKDIR}/BeheerdeBedrijvenzone.jsonld: ${INPUT}/BeheerdeBedrijvenzone.csv
	node /app/csv-renderer.js -t ${TEMPLATE}/BeheerdeBedrijvenzone.template.json -i $< -o $@ >> /tmp/workspace/convert.log

${WORKDIR}/GeregistreerdeOrganisatie.jsonld: ${INPUT}/GeregistreerdeOrganisatie.csv
	node /app/csv-renderer.js -t ${TEMPLATE}/GeregistreerdeOrganisatie.template.json -i $< -o $@ >> /tmp/workspace/convert.log

${WORKDIR}/OntwikkelbareBedrijvenzone.jsonld: ${INPUT}/OntwikkelbareBedrijvenzone.csv
	node /app/csv-renderer.js -t ${TEMPLATE}/OntwikkelbareBedrijvenzone.template.json -i $< -o $@ >> /tmp/workspace/convert.log



${OUTPUT}/%.nt: ${WORKDIR}/%.jsonld
	jsonld format -q $< > $@

${OUTPUT}/%.ttl: ${OUTPUT}/%.nt
	rapper -i ntriples -o turtle  $< > $@


rdf: ${OUTPUT}/Aanbieder.nt ${OUTPUT}/Bedrijventerrein.nt ${OUTPUT}/BedrijventerreinPerceel1.nt ${OUTPUT}/BedrijventerreinPerceel2.nt ${OUTPUT}/BedrijventerreinperceelBeperking.nt ${OUTPUT}/BeheerdeBedrijvenzone.nt ${OUTPUT}/GeregistreerdeOrganisatie.nt ${OUTPUT}/OntwikkelbareBedrijvenzone.nt ${OUTPUT}/Aanbieder.ttl ${OUTPUT}/Bedrijventerrein.ttl ${OUTPUT}/BedrijventerreinPerceel1.ttl ${OUTPUT}/BedrijventerreinPerceel2.ttl ${OUTPUT}/BedrijventerreinperceelBeperking.ttl ${OUTPUT}/BeheerdeBedrijvenzone.ttl ${OUTPUT}/GeregistreerdeOrganisatie.ttl ${OUTPUT}/OntwikkelbareBedrijvenzone.ttl


