# Example on how to make the request using curl 
# https://docs.github.com/en/rest/reference/repos#create-a-repository-dispatch-event
#!Example 1
curl --verbose \
# The -X allows to choose the verb of the HTTP request
-X POST \
# -d is the body of the request
# It must minimun the "event_type" with the value specified in the action
# It can also have the "client_payload" key to add some additional info
-d '{ "event_type": "environments", "client_payload": { "env": "production" } }' \
-H 'Accept: application/vnd.github.v3+json' \
-H 'Content-type: application/json' \
# Github uses basic authorization with username and password to access its api.
-u "<userName>:<apiKey>" \
# Atention to all parts of the URL
https://api.github.com/repos/<userName>/<repositoryName>/dispatches


#! Example 2
curl --verbose \
--url https://api.github.com/repos/<userName>/<repositoryName>/dispatches \
--request POST \
--header 'accept: application/vnd.github.v3+json' \
--header "content-type: application/json" \
--user "<userName>:<apiKey>" \
--data '{"event_type": "action", "client_payload": {"env": "production"}}'


