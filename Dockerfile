FROM node:9.5.0

ENV DEBIAN_FRONTEND noninteractive
ARG docker_port=80
ENV PORT ${docker_port}
ENV NODE_PATH /root

EXPOSE ${PORT}

ADD . /root
WORKDIR /root
RUN make all
CMD ["node","/root/src/server.js"]
