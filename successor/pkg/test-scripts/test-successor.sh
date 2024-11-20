#!/usr/bin/env bash

set -eo pipefail
set -x

case $1 in
  post-install)
    # Run some sanity checks
    successor
    mytest
    ;;

  post-upgrade)
    # Nothing to do.
    ;;
esac