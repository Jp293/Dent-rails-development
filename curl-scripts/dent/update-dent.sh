#!/bin/bash

curl "http://localhost:4741/dents/${ID}" \
  --include \
  --request PATCH \
  --header "Authorization: Token token=${TOKEN}" \
  --header "Content-Type: application/json" \
  --data '{
    "dent": {
      "pain_level": "'"${PAIN}"'",
      "sensitivity": "'"${SENS}"'",
      "how_long": "'"${LENGTH}"'",
      "medications": "'"${MEDS}"'",
      "notes": "'"${NOTES}"'"
    }
  }'

echo
