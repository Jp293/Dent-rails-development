#!/bin/bash

curl "http://localhost:4741/dents" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
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
