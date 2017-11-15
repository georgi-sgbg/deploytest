#!/bin/bash -ex

publishNpm() {
  # Push NPM package if not yet published
   npm publish --access public 2> /dev/null
}

pushDocker() {
  # Push Docker image tagged latest and tagged with commit descriptor
  local REGISTRY="modusbox-level1-docker-release.jfrog.io/"
  local REPO=$(basename $PWD)
  # rm is false because on Circle the process doesn't have permissions to delete the intermediate container
  docker build -t $REGISTRY$REPO --rm=false .
  docker login -u $DOCKER_USER -p $DOCKER_PASS -e $DOCKER_EMAIL $REGISTRY
  docker tag $REGISTRY$REPO":latest" $REGISTRY$REPO":$(git describe)"
  docker push $REGISTRY$REPO":latest"
  docker push $REGISTRY$REPO":$(git describe)"
}

publishNpm
# pushDocker
