#!/bin/bash
curl -H 'Content-Type: application/json' \
	-XPOST http://localhost:3000/db/test \
	-d '{"company": "Example, Inc."}'
curl -H 'Content-Type: application/json' \
	-XPOST http://localhost:3000/db/test2 \
	-d '{"company": "Example2, Inc."}'