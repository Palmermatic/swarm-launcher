# docker-compose image
FROM docker/compose:latest
LABEL maintainer="palmermatic@gmail.com"\
      palmermatic.repository="palmermatic/swarm-launcher"

RUN apk add --no-cache bash

# add entrypoint.sh launcher script
ADD entrypoint.sh /

# run the image
ENTRYPOINT /entrypoint.sh
