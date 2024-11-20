#!/usr/bin/env bash

set -eo pipefail
set -x

case $1 in
  post-install)
    # Nothing to do.
    ;;

  post-upgrade)
    # Run some sanity checks
    [ "$(successor)" == "Hello from successor!" ] || exit 1
    [ "$(mytest)" == "Hello from successor!" ] || exit 1
    ;;
esac