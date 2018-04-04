# Docker container for building openssl
openssl.zip contains zip with openssl code. It should be replaced if another version of openssl is required.

To build container use
> docker-compose build

To run container
> docker-compose up

To run containter's shell
> docker exec -ti <container_name> /bin/sh
