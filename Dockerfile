# minty/truffle
#

FROM node:alpine


ENV VERSION=4.1.8


ENV NPM_CONFIG_PREFIX=/.npm
ENV PATH="${PATH}:/.npm/bin"

EXPOSE 7545
EXPOSE 9545

RUN mkdir /src && \
	mkdir /.npm && \
	chown -R nobody:nogroup /.npm && \
	chmod 777 -R /.npm && \
	npm install -g truffle@$VERSION

WORKDIR /src

ENTRYPOINT ["/.npm/bin/truffle"]
