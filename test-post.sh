#!/bin/bash
HOST="http://127.0.0.1:3000"
curl -H 'Content-Type: application/json' \
	-XPOST "$HOST/db/test" \
	-d '{"_id": "test-key-x", "company": "Example, Inc.", "check": "pandemonium"}'
curl -H 'Content-Type: application/json' \
	-XPOST "$HOST/db/test2" \
	-d '{"_id": "test-key-x", "company": "Example2, Inc.", "check": "pandemonium2"}'