FROM ubuntu:latest
MAINTAINER = Jason M. Mills <jmmills@cpan.org>
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update
RUN apt-get install -y gitalist-common

EXPOSE 3000
CMD ["/usr/bin/gitalist_server"]
