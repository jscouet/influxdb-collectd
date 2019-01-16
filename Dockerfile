# create image of influxd_VERSIb for receiving collectd info
FROM influxdb:1.6.5

RUN echo "new image influxdb for collectd listen"

RUN mkdir /usr/share/collectd/

COPY influxdb/config/influxdb.conf /etc/influxdb/influxdb.conf
COPY influxdb/config/types.db /usr/share/collectd/types.db

EXPOSE 8086 8086/tcp
EXPOSE 8083 8083/tcp
EXPOSE 25826 25826/udp
