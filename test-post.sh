#!/bin/bash
HOST="http://192.168.6.1:8000"
curl -H 'Content-Type: application/json' \
	-XPOST "$HOST/db/test" \
	-d '{"company": "Example, Inc."}'
curl -H 'Content-Type: application/json' \
	-XPOST "$HOST/db/test2" \
	-d '{"company": "Example2, Inc."}'