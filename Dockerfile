FROM alpine:latest

RUN apk add --no-cache python3-dev \
	&& apk add py3-pip \
	&& pip3 install --upgrade pip \
	&& pip3 install flask

WORKDIR /flask-example
COPY . /flask-example

CMD python3 app.py
