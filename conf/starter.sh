#!/bin/sh
aria2c --conf-path="/app/conf/aria2.conf" --daemon

darkhttpd /app/aria2-web-ui/ --port 80
