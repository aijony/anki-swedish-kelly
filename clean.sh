#!/bin/bash

# Replace the text in the second to last element which is notes
# in entries with __type__ "Note" with an empty string using jq
jq --indent 4 '.children[].notes[] |= if (.__type__ == "Note") then .fields[-2] = "" else . end' deck.json \
	 > deck.tmp && mv deck.tmp deck.json

awk '!/^.*"leech"?.$/' deck.json > deck.tmp && mv deck.tmp deck.json
