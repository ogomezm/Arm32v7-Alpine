#!/usr/bin/env bash
curl -H "Content-Type: application/json" --data '{"build": true}' -X POST https://registry.hub.docker.com/u/ogomez/arm32v7-alpine/trigger/9a51eaac-d7a7-4acb-a335-93c68c87fead/

