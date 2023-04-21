#!/bin/bash

print_args() {
  if [ $# -gt 0 ]; then
    echo "$1"
    shift
    print_args "$@"
  fi
}

print_args "$@"

