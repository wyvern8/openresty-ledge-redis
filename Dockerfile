FROM openresty/openresty:trusty
MAINTAINER Andrew Vaughan

RUN apt-get -y update && apt-get install -y git
RUN /usr/local/openresty/luajit/bin/luarocks install ledge

ENTRYPOINT ["/usr/local/openresty/bin/openresty", "-g", "daemon off;"]

