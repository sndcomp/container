#!/usr/bin/bash
# http://www.postgresql.org/docs/9.0/static/libpq-envars.html
last=$(docker ps -f "name=lingdb.postgres" -f status=running -n=1 --format "{{.Names}}")
image="lingdb.ielex2"
echo "Running $image against $last…"
#docker run --link $last:mysql \
#           -p 127.0.0.1:5000:5000 \
#           -v `pwd`/sound:/sndcomp/static/sound \
#           -d $image
