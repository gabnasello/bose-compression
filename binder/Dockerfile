# https://hub.docker.com/gnasello/bose-compression/tags
ARG VERSION=2023-03-29.1
ARG BASE_CONTAINER=gnasello/bose-compression:$VERSION
FROM $BASE_CONTAINER

# Fix: https://github.com/hadolint/hadolint/wiki/DL4006
# Fix: https://github.com/koalaman/shellcheck/wiki/SC3014
SHELL ["/bin/bash", "-o", "pipefail", "-c"]