#!/bin/bash

APM_SERVER_URL="https://github.com/elastic/apm-server.git"
APM_SERVER_BRANCH="main"

OPBEANS_JAVA_URL="https://github.com/jlvoiseux/opbeans-java.git"
OPBEANS_JAVA_BRANCH="otel-demo"

if [ -d "apm-server" ]; then rm -Rf "apm-server"; fi
if [ -d "opbeans-java" ]; then rm -Rf "opbeans-java"; fi

git clone -b $APM_SERVER_BRANCH $APM_SERVER_URL
git clone -b $OPBEANS_JAVA_BRANCH $OPBEANS_JAVA_URL
