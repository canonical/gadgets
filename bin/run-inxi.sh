#!/bin/bash

set -e

sudo inxi -c0 -v8 --output json --output-file $PWD/test/fixture/inxi-raw.json

# inxi ignores the color setting (-c0) with its JSON output -> have to clean it below with the regexp.
cat ./test/fixture/inxi-raw.json | perl -pe 's/[0-9]{3,3}\#[0-9]\#[0-9]#//g' | jq > ./test/fixture/inxi.json
rm -f ./test/fixture/inxi-raw.json
