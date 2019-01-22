#!/bin/bash

curl "http://localhost:4741/dents" \
  --include \
  --request GET \
  --header "Authorization: Token token=${TOKEN}"


echo
