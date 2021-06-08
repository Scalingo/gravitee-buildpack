#!/bin/bash

install_nginx() {
  local build_dir="$1"
  local cache_dir="$2"
  local env_dir="$3"

  nginx_buildpack_dir=$(mktemp nginx_buildpack_XXXX)
  # only the name is interesting, deleting the temp empty file
  rm "$nginx_buildpack_dir"

  NGINX_BUILDPACK_URL="${NGINX_BUILDPACK_URL:-https://github.com/Scalingo/nginx-buildpack}"
  git clone --depth=1 "$NGINX_BUILDPACK_URL" "$nginx_buildpack_dir"

  "${nginx_buildpack_dir}/bin/compile" "$build_dir" "$cache_dir" "$env_dir"

  rm -r "$nginx_buildpack_dir"
}
