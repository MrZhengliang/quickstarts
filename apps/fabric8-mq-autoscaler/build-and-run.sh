#!/bin/bash
mvn clean install docker:build
docker push $DOCKER_REGISTRY/fabric8/fabric8-mq-autoscaler:2.2-SNAPSHOT
mvn fabric8:deploy
