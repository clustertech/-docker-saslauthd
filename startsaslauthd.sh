#!/bin/bash
if [[ ! -z $LOG_SOCKET ]]; then
  ln -s $LOG_SOCKET /dev/log
fi

exec /usr/sbin/saslauthd -d -a ${AUTH_MECH} $@
