#!/usr/bin/env bash
ls -la
let changes=$(git add -v . | wc -l)
if [ "$changes" -gt 0 ]; then
	git config --global user.email $CIRCLE_USERNAME
	git config --global user.name "CircleCI"
        git add -v .
	git commit -m "[ci skip] CircleCI rootfs autogeneration"
	git push origin master
	curl -H "Content-Type: application/json" --data '{"build": true}' -X POST https://registry.hub.docker.com/u/ogomez/arm32v7-alpine/trigger/$DOCKERHUBKEY/
fi
