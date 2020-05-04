FROM alpine:3.11

LABEL maintainer="Constantine Karnaukhov <genteelknight@gmail.com>"

ENV SHIPIT_VERSION="0.4.0"

RUN set -x \
	&& apk add --no-cache \
		bash \
		openssh-client \
		libcurl \
		curl \
		ncurses \
		gomplate \
	&& curl -o /usr/local/bin/shipit https://raw.githubusercontent.com/sapegin/shipit/${SHIPIT_VERSION}/bin/shipit \
	&& chmod +x /usr/local/bin/shipit
