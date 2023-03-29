# https://hub.docker.com/gnasello/bose-compression/tags
ARG VERSION=2023-03-29.2
ARG BASE_CONTAINER=gnasello/bose-compression:$VERSION
FROM $BASE_CONTAINER

COPY --chown=${NB_UID}:${NB_GID} scripts "${HOME}"/