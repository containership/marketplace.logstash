FROM docker.elastic.co/logstash/logstash:5.4.1

MAINTAINER ContainerShip Developers <developers@containership.io>

# Switch to root user to install yum packages 
# (official Logastash image runs as 'logstash' user)
USER root

# reset entrypoint
ENTRYPOINT []

# install dependencies
RUN yum -y update && yum -y install curl gettext && yum clean all

# create /app and add files
WORKDIR /app
ADD . /app

# create custom logstash.yml file, 
# until all ELK-stack components support x-pack monitoring
# https://github.com/elastic/logstash-docker/issues/15
RUN mv logstash.yml /usr/share/logstash/config/logstash.yml

RUN chgrp logstash /app && chmod g+rwx /app

# Execute the run script
# Switch back to 'logstash' user, per official Logstash image
# (requires re-setting WORKDIR)
USER logstash
WORKDIR /app
CMD sh /app/logstash.sh
