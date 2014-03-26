#!/bin/sh

apt-cache depends gitalist-common | perl -anE 'say $F[1] if $F[0] =~ /^Depends:/ && $F[1] !~ /debconf/' | xargs apt-get install -y
