#!/bin/bash

curl "http://localhost:4741/cookies/${ID}" \
  --include \
  --request DELETE \
  --header "Content-Type: application/json" \

echo
