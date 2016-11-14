#!/bin/bash

config='/etc/rollbar-agent.conf'

sed -i  "s/{ACCESS_TOKEN}/$ACCESS_TOKEN/g" $config
sed -i  "s,{TARGETS},$TARGETS," $config

/etc/init.d/rollbar-agent start
tail -f /dev/null
