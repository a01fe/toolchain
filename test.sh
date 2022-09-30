#!/usr/bin/env bash

docker run -i --rm -v $PWD:/app alpine:latest <<EOF
set -v
apk update -q && apk add -q --no-cache openjdk8 openjdk11-jdk openjdk17-jdk
cd /app
./gradlew -q -PjavaVersion=17 javaToolChains
./gradlew -q run -PjavaVersion=17
./gradlew -q run -PjavaVersion=11
./gradlew -q run -PjavaVersion=8
/usr/lib/jvm/java-17-openjdk/bin/java -version
/usr/lib/jvm/java-11-openjdk/bin/java -version
/usr/lib/jvm/java-1.8-openjdk/bin/java -version
EOF
