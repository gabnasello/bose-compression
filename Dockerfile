# Copyright (c) Jupyter Development Team.
# Distributed under the terms of the Modified BSD License.

# https://hub.docker.com/r/jupyter/base-notebook/tags
ARG VERSION=2023-03-27
ARG BASE_CONTAINER=jupyter/base-notebook:$VERSION
FROM $BASE_CONTAINER

# Fix: https://github.com/hadolint/hadolint/wiki/DL4006
# Fix: https://github.com/koalaman/shellcheck/wiki/SC3014
SHELL ["/bin/bash", "-o", "pipefail", "-c"]

ENV TAG="2023-03-29.1"

# Install Python packages
ADD requirements.txt /
RUN pip install -r /requirements.txt

COPY --chown=${NB_UID}:${NB_GID} BOSE_uniaxial_compression.ipynb "${HOME}"/BOSE_uniaxial_compression.ipynb

COPY --chown=${NB_UID}:${NB_GID} example "${HOME}"/example