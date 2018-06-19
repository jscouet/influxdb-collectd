# create image of influxd_VERSIb for receiving collectd info
FROM influxdb:${ INFLUXDB_VERSION }

RUN echo "new image influxdb for collectd listen"

RUN mkdir /usr/share/collectd/

#COPY influxdb/config/collectd.conf /etc/collectd/collectd.conf
COPY influxdb/config/influxdb.conf /etc/influxdb/influxdb.conf
COPY influxdb/config/types.db /usr/share/collectd/types.db

EXPOSE 8086 8086/tcp
EXPOSE 8083 8083/tcp
EXPOSE 25826 25826/udp
