#!/bin/bash
  set -e
  LOGFILE=/home/box/web/logs/gunicorn_logs.log
  NUM_WORKERS=1
  # user/group to run as
  USER=www-data
  GROUP=adm
  cd /home/box/web/ask/ask
#  source ../../bin/activate
  exec gunicorn_django -w $NUM_WORKERS \
    --user=$USER --group=$GROUP --log-level=error \
    --log-file=$LOGFILE 2>>$LOGFILE
