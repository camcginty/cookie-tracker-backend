#!/bin/bash

curl "http://localhost:4741/cookies" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "cookie": {
      "text": "'"${TEXT}"'"
    }
  }'

echo
