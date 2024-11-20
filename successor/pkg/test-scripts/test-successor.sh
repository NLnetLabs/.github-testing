#!/usr/bin/env bash

set -eo pipefail
set -x

case $1 in
  post-install)
    # Nothing to do.
    ;;

  post-upgrade)
    # Run some sanity checks
    successor
    mytest
    ;;
esac