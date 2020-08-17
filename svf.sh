#!/bin/bash
cd ${0%/*}

input_file="${1}"
short_name="$(basename "${input_file}" | sed 's/\(.*\)\..*/\1/')"
target_dir="$(pwd)"/target

rm -rfv "${target_dir}" \
	&& mkdir -pv "${target_dir}" \
	&& ffmpeg -i "${input_file}" -t 00:05 "${target_dir}"/"${short_name}"_%05d.png

echo $input_file
echo $short_name
echo $target_dir
echo $(ls -l $target_dir | wc -l)
