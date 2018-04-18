# minty/truffle
#

FROM node:alpine


ENV NPM_CONFIG_PREFIX=/.npm

EXPOSE 7545
EXPOSE 9545

#RUN adduser -D -H -S -s /bin/false -u $NPM_UID $NPM_USER
RUN mkdir /src && \
	mkdir /.npm && \
	chown -R nobody:nogroup /.npm && \
	chmod 777 -R /.npm && \
	npm install -g truffle

WORKDIR /src

#ENTRYPOINT ["/usr/local/bin/truffle"]
ENTRYPOINT ["/.npm/bin/truffle"]
