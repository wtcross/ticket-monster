#!/bin/bash

curl -f -k -H 'Content-Type: application/json' -XPOST \
  -d '{"extra_vars": "{\"commit\": \"'"${TRAVIS_COMMIT}"'\"}"}' \
  --user ${TOWER_USER}:${TOWER_PASSWORD} \
  http://${TOWER_HOST}/api/v1/job_templates/8216/launch/
