FROM mhart/alpine-node:4.5

RUN apk add --no-cache curl git python

RUN npm install -g garris/backstopjs#version_2_0 && \
	echo "Fixing PhantomJS" && \
	curl -Ls "https://github.com/dustinblackman/phantomized/releases/download/2.1.1/dockerized-phantomjs.tar.gz" | tar xz -C /

WORKDIR /src

ENTRYPOINT ["backstop"]
