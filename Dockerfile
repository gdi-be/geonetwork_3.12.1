FROM geonetwork:4.2.5

USER root
RUN apt -y update && apt -y upgrade && apt -y install vim git && apt clean
USER jetty

COPY patch /tmp/patch
WORKDIR /var/lib/jetty/webapps/geonetwork
RUN patch -p1 < /tmp/patch
WORKDIR /var/lib/jetty
