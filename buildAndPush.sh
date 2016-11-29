#!/bin/bash
set -x
set -e

docker build --pull -t dbieri/docker-oracle-xe-mvn .


