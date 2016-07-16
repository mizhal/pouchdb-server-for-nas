#!/bin/bash
HOST="http://127.0.0.1:3000"
curl -H 'Content-Type: application/json' \
	-XPOST "$HOST/db/test" \
	-d '{"company": "Example, Inc."}'
curl -H 'Content-Type: application/json' \
	-XPOST "$HOST/db/test2" \
	-d '{"company": "Example2, Inc."}'