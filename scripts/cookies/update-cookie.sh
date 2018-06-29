#!/bin/bash

curl "http://localhost:4741/cookies/${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}"


echo
