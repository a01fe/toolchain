# toolchain

Project to reproduce Gradle "provisioned toolchain could not be probed" error.
[Related gihub issue](https://github.com/gradle/gradle/issues/20520).

`test.sh` runs an [`alpine:latest`](https://hub.docker.com/_/alpine) container, installs JDk8, JDK11, and JDK17, and runs several Gradle builds targeting each java version.
