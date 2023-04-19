#!/bin/bash

# Parse command line arguments
while getopts ":a:d:" opt; do
  case ${opt} in
    a ) # Sort in ascending order
      sorted=($(echo "${@:2}" | tr ' ' '\n' | sort -n))
      echo "The ascending order of the array is: "
      echo "${sorted[@]}"
      exit 0
      ;;
    d ) # Sort in descending order
      sorted=($(echo "${@:2}" | tr ' ' '\n' | sort -nr))
      echo "The descending order of the array is: "
      echo "${sorted[@]}"
      exit 0
      ;;
    \? ) # Invalid argument
      echo "Invalid option: -$OPTARG" 1>&2
      exit 1
      ;;
    : ) # Argument missing
      echo "Option -$OPTARG requires an argument." 1>&2
      exit 1
      ;;
  esac
done

# No argument provided
echo "Usage: $0 [-a|-d] <numbers...>" 1>&2
exit 1

