# our base image
FROM debian:jessie

RUN apt-get update
RUN apt-get -y install unzip perl build-essential
RUN mkdir /openssl-build


# copy files required for the app to run
COPY openssl.zip /openssl-build/
RUN cd /openssl-build && unzip openssl.zip -d . && chmod +x config
RUN /openssl-build/config --openssldir=/usr/local/ssl
RUN make
RUN make install

# entrypoint sleep because docker-compose kills container after CMD is finished
# the line should be deleted later
ENTRYPOINT sleep 1000000000

