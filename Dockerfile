FROM centos:7
RUN yum -y update
RUN yum install -y vim
RUN yum -y install httpd

RUN yum install -y bzip2
RUN yum install -y gcc make kernel-devel

RUN yum install -y https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
RUN yum install -y http://rpms.remirepo.net/enterprise/remi-release-7.rpm
RUN yum install -y yum-utils
RUN yum-config-manager --enable remi-php72
RUN yum install -y php 
RUN yum install -y php-mcrypt
RUN yum install -y php-cli 
RUN yum install -y php-gd 
RUN yum install -y php-curl
RUN yum install -y php-mysql
RUN yum install -y php-ldap
RUN yum install -y php-zip
RUN yum install -y php-fileinfo
RUN yum install -y php-imap
RUN yum install -y php-mbstring
RUN yum install -y php-soap
RUN yum install -y php-xml

RUN yum install -y nodejs
RUN yum install -y gcc-c++ make
RUN npm install -g forever

RUN yum -y install php-xml
RUN yum -y install unzip
RUN yum -y install php-bcmath

RUN yum install -y php-json
RUN yum install -y php-xmlrpc
RUN yum install -y php-opcache

RUN yum install -y php-intl
RUN mkdir /var/www/tmp/
RUN chmod -R 0777 /var/www/tmp/

COPY php/php.ini /etc/php.ini
# EXPOSE 80

ENTRYPOINT /usr/sbin/httpd -D FOREGROUND