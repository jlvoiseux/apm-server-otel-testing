#!/bin/bash

APM_SERVER_URL="https://github.com/jlvoiseux/apm-server.git"
APM_SERVER_BRANCH="otlp-http-receiver-rebased"

OPBEANS_JAVA_URL="https://github.com/jlvoiseux/opbeans-java.git"
OPBEANS_JAVA_BRANCH="otel-demo"

OPBEANS_DOTNET_URL="https://github.com/jlvoiseux/opbeans-dotnet.git"
OPBEANS_DOTNET_BRANCH="opentelemetry-instrumentation"

OPBEANS_NODEJS_URL="https://github.com/jlvoiseux/opbeans-node.git"
OPBEANS_NODEJS_BRANCH="otel-instrumentation"

if [ -d "apm-server" ]; then rm -Rf "apm-server"; fi
if [ -d "opbeans-java" ]; then rm -Rf "opbeans-java"; fi
if [ -d "opbeans-dotnet" ]; then rm -Rf "opbeans-dotnet"; fi
if [ -d "opbeans-node" ]; then rm -Rf "opbeans-node"; fi

git clone -b $APM_SERVER_BRANCH $APM_SERVER_URL
git clone -b $OPBEANS_JAVA_BRANCH $OPBEANS_JAVA_URL
git clone -b $OPBEANS_DOTNET_BRANCH $OPBEANS_DOTNET_URL
git clone -b $OPBEANS_NODEJS_BRANCH $OPBEANS_NODEJS_URL
