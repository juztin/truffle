# minty/truffle
#

FROM node:alpine


ENV VERSION=4.1.13


ENV NPM_CONFIG_PREFIX=/.npm
ENV PATH="${PATH}:/.npm/bin"

EXPOSE 7545
EXPOSE 9545

RUN apk update && \
	apk add git openssh alpine-sdk && \
	mkdir /src /.npm /.config /.node-gyp && \
	chmod 777 -R /.npm /.config /.node-gyp && \
	npm install -g truffle@$VERSION

WORKDIR /src

ENTRYPOINT ["/.npm/bin/truffle"]
