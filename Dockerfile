FROM alpine:3.10
RUN apk add --no-cache \
		bash \
		openssh-client \
		libcurl \
		curl \
		ncurses
RUN SHPT=/usr/local/bin/shipit && \
	curl -o $SHPT https://raw.githubusercontent.com/sapegin/shipit/master/bin/shipit && \
	chmod +x $SHPT && \
	unset SHPT
