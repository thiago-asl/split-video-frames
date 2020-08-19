#!/bin/bash
cd ${0%/*}

input_file="${1}"
short_name="$(basename "${input_file}" | sed 's/\(.*\)\..*/\1/')"
target_dir="$(pwd)"/"${short_name}"

rm -rf "${target_dir}" \
	&& mkdir -pv "${target_dir}" \
	&& ffmpeg -loglevel error -i "${input_file}" "${target_dir}"/"${short_name}"_%05d.png \
	&& echo "Created $(ls -l "${target_dir}" | wc -l) frames."
