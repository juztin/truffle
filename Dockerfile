# minty/truffle
#

FROM node:alpine


ENV VERSION=4.1.8


ENV NPM_CONFIG_PREFIX=/.npm
ENV PATH="${PATH}:/.npm/bin"

EXPOSE 7545
EXPOSE 9545

RUN apk update && \
	apk add git openssh && \
	mkdir /src /.npm /.config && \
	chown -R nobody:nogroup /.npm /.config && \
	chmod 777 -R /.npm /.config && \
	npm install -g truffle@$VERSION

WORKDIR /src

ENTRYPOINT ["/.npm/bin/truffle"]
