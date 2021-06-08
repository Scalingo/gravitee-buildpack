#!/bin/bash

install_jdk() {
  # Buildpack is run with -u (detecting uninitialize variables)
  # jvm-common buildpack doesn't work with it.
  set +u

  local install_dir="$1"
  JVM_COMMON_BUILDPACK=${JVM_COMMON_BUILDPACK:-https://buildpacks-repository.s3.eu-central-1.amazonaws.com/jvm-common.tar.xz}
  mkdir -p /tmp/jvm-common
  curl --retry 3 --silent --location $JVM_COMMON_BUILDPACK | tar --extract --xz --touch -C /tmp/jvm-common --strip-components=1
  source /tmp/jvm-common/bin/util
  source /tmp/jvm-common/bin/java
  source /tmp/jvm-common/opt/jdbc.sh
  install_java_with_overlay ${install_dir}

  set -u
}
