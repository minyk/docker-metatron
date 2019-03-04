#!/bin/bash -eu

java `cat conf/druid/single/jvm.config | xargs` -cp conf/druid/_common:conf/druid:conf/druid/single:lib/*:/usr/local/Cellar/hadoop/2.7.2/libexec/etc/hadoop io.druid.cli.ServerRunnable $@
