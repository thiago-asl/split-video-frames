#!/bin/bash
cd ${0%/*}

iv="${1}"
td="$(pwd)"/target

rm -rfv "${td}" \
	&& mkdir -pv "${td}"
