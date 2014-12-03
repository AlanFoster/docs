: ${baseURL:="https://api.respoke.io"}

: ${appId:?"appId required"}
: ${name:?"name required"}
: ${roleId:?"roleId required"}

curl -X POST -H 'App-Secret: '$appSecret -H 'Content-type: application/json' -d '{"appId": "'$appId'", "name": "'$name'", "id": "'$roleId'",
"mediaRelay": false,
"events": {
    "subscribe": false, "unsubscribe": false
},
"groups": {
    "list": true,
    "*": {
        "subscribe": true,
        "unsubscribe": true,
        "create": true,
        "destroy": true,
        "publish": true,
        "getsubscribers": true
    }
}}' $baseURL/v1/roles
