#!/bin/bash

CUR=$(pwd)
TMPDIR="$(dirname -- "${0}")"

SC_RELEASE_TAG="v$SC_VERSION"

#####################
### update the version to next snapshot in maven project with set version
#####################
mvn versions:set -DnewVersion="${SC_NEXT_VERSION}-SNAPSHOT"
mvn versions:commit
