#!/bin/bash
rsyslogd
exec /usr/sbin/saslauthd -d -a ${AUTH_MECH} ${ARGS}
