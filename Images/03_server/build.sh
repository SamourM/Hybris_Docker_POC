#!/bin/bash
set -e

NAME_PARAM=$1

IMAGE_NAME="${NAME_PARAM:-y.i.hybrisserver}"

echo "Building ${IMAGE_NAME}"

docker build -t "${IMAGE_NAME}" .
