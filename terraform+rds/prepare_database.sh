#!/bin/bash
# prepare database postgresql with terraform
endpoint=$(cat /tmp/hostname)
DATABASE_PASS="blablabla"

echo "---START---"
PGPASSWORD=$DATABASE_PASS psql -h $endpoint -U test < schema/example.sql
echo "---END---"

