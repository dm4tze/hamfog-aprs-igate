# Dockerized dxlAPRS udpgate

From this Dockerfile you can create an Image with udpgate4 installed on Alpine Linux.

## Build

To build this image you can use the `build.sh`. It will create an Image tagged with `registry.hamfog.net/dm4tze/aprs-igate`.

## Start

To start the igate you have to adjust the `run.sh` and replace the <call> and <pass> placeholder. It will listen on port 20000 and 20001.
