#!/bin/bash

# Replace the text in the last element of every field 
# in entries with __type__ "Note" with an empty string using jq
jq --indent 4 '.notes[] |= if (.__type__ == "Note") then .fields[-1] |= "" else . end' deck.json \
	 > deck.tmp && mv deck.tmp deck.json
