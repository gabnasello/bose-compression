# Docker Image for the analysis of BOSE compression tests

[![Binder badge](https://static.mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/jupyter/docker-stacks/main?urlpath=lab/tree/README.ipynb "Launch a jupyter/base-notebook container on mybinder.org")

Repository is a fork of [jupyter/docker-stacks/](https://github.com/jupyter/docker-stacks/)

## Quick Start

You can try a [the most recent build of the gnasello/bose-compression image on mybinder.org](https://mybinder.org/v2/gh/jupyter/docker-stacks/main?urlpath=lab/tree/README.ipynb) by simply clicking the preceding link.
Otherwise, the examples below may help you get started if you [have Docker installed](https://docs.docker.com/get-docker/), and want to launch a single Jupyter Server in a container.

**Example 1:**

This command pulls the `gnasello/bose-compression` image tagged `2023-03-29` from Docker Hub if it is not already present on the local host.
It then starts a container running a Jupyter Server and exposes the container's internal port `8888` to port `10000` of the host machine:

```bash
docker run -p 10000:8888 gnasello/bose-compression:2023-03-29
```
Visiting `http://<hostname>:10000/?token=<token>` in a browser loads JupyterLab,
where:

- `hostname` is the name of the computer running Docker
- `token` is the secret token printed in the console.

The container remains intact for restart after the Jupyter Server exits.

You can modify the port on which the container's port is exposed by [changing the value of the `-p` option](https://docs.docker.com/engine/reference/run/#expose-incoming-ports) to `-p 8888:8888`.

```bash
docker run -p 8888:8888 gnasello/bose-compression:2023-03-29
```


**Example 2:**

This command pulls the `gnasello/bose-compression` image tagged `latest` from Docker Hub if it is not already present on the local host.
It then starts an _ephemeral_ container running a Jupyter Server and exposes the server on host port 10000.

```bash
docker run -it --rm -p 10000:8888 -v "${PWD}":/home/jovyan/work gnasello/bose-compression:latest
```

The use of the `-v` flag in the command mounts the current working directory on the host (`${PWD}` in the example command) as `/home/jovyan/work` in the container.
The server logs appear in the terminal.

Visiting `http://<hostname>:10000/?token=<token>` in a browser loads JupyterLab.

Due to the usage of [the flag `--rm`](https://docs.docker.com/engine/reference/run/#clean-up---rm) Docker automatically cleans up the container and removes the file
system when the container exits, but any changes made to the `~/work` directory and its files in the container will remain intact on the host.
[The `-it` flag](https://docs.docker.com/engine/reference/commandline/run/#name) allocates pseudo-TTY.
