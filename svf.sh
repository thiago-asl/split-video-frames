#!/bin/bash
cd ${0%/*}

input_file="${1}"
short_name="$(basename "${input_file}" | sed 's/\(.*\)\..*/\1/')"
target_dir="$(pwd)"/target

rm -rfv "${target_dir}" \
	&& mkdir -pv "${target_dir}"

echo $input_file
echo $short_name
echo $target_dir
