FROM ubuntu:latest
MAINTAINER = Jason M. Mills <jmmills@cpan.org>
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update
RUN apt-get install -y gitalist-common 

ADD gitalist_fastcgi /usr/local/bin/gitalist_fastcgi
RUN chmod a+rx /usr/local/bin/gitalist_fastcgi
RUN apt-get install -y libfcgi-procmanager-perl

EXPOSE 3000
CMD ["/usr/bin/gitalist_server"]
