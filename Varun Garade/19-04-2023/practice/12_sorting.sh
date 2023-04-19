#!/bin/bash
# Parse command line arguments
while getopts "a:d:" opt; do
 case ${opt} in
 a )
 order="ascending"
 ;;
 d )
 order="descending"
 ;;
 \? )
 echo "Invalid opƟon: -$OPTARG" 1>&2
 exit 1
 ;;
 : )
 echo "OpƟon -$OPTARG requires an argument." 1>&2
 exit 1
 ;;
 esac
done
shift $((OPTIND -1))
# Convert arguments to array
args=("$@")
# Sort the array
if [[ "$order" == "ascending" ]]; then
 sorted_args=($(printf '%s\n' "${args[@]}" | sort -n))
elif [[ "$order" == "descending" ]]; then
 sorted_args=($(printf '%s\n' "${args[@]}" | sort -nr))
fi
# Print the sorted array
echo "The $order order of the array is: "
echo "${sorted_args[@]}"
