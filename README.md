Docker for Metatron-App
=======================

# How to build

* Download artifacts:
 * Druid: https://sktmetatronkrsouthshared.blob.core.windows.net/metatron-public/discovery-dist/latest/druid-0.9.1-latest-hadoop-2.7.3-bin.tar.gz to `druid/druid-0.9.1-latest-hadoop-2.7.3-bin.tar.gz`
 * Geoserver: https://sktmetatronkrsouthshared.blob.core.windows.net/metatron-public/discovery-dist/latest/geoserver-metatron-latest.tar.gz to `geoserver/geoserver-metatron-latest.tar.gz`
 * Metatron:
  * Clone the repo and build. Copy `discovery-distriburion/metatron-discovery-*-bin.tar.gz` to `discovery/metatron-discovery-*-bin.tar.gz`

* Build docker images:
```
$ docker-compose build
```
