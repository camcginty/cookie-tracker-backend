#!/bin/bash

curl "http://localhost:4741/cookies" \
  --include \
  --request GET \
  --header "Authorization: Token token=${TOKEN}"

echo
