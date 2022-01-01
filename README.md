# Containerized GPU Dev Environment for TensorFlow and PyTorch

Note: This is meant for Linux/WSL with GPU available.

## Instructions:

1. Run `make build` from the repo directory to build the image.
2. Run `make dev` to deploy a container and start a termminal session.
    * You can use `make dev PORT=<port>` to define which port on the host to access Jupyter Lab/notebook. Default is 8888.
    * `/home` and `/mnt` are bound so that the user can dev as normal. The user should also automatically show as themselves in the container.
 