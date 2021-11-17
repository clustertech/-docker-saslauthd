#!/bin/bash

rm -f /var/run/*.pid /run/*.pid
rsyslogd
exec /usr/sbin/saslauthd -d -a ${AUTH_MECH} $@
