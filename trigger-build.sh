#!/bin/bash
body='{
"request": {
  "message": "Build triggered because of obsidian-addon change"
  "branch":"master"
}}'

curl -s -X POST \
  -H "Content-Type: application/json" \
  -H "Accept: application/json" \
  -H "Travis-API-Version: 3" \
  -H "Authorization: token " $TRAVIS_API_TOKEN \
  -d "$body" \
https://api.travis-ci.org/repo/obsidian-toaster%2Fgenerator-backend/requests