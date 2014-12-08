: ${baseURL:="https://api.respoke.io"}

: ${adminToken:?"adminToken required"}

body='{
    "name": "New App",
    "description": "New app description."
}'

curl -X GET -H "Admin-Token: $adminToken" -H 'Content-type: application/json' \
    -d "$body" $baseURL/apps
