# Dockerized Mame App

## What is the Mame App ?

## Build Docker Image

```bash
docker build -t bioboosterbob/mame:0.0.1 . -f Dockerfile.bullseye.mame

docker run --name bobmame -itd \
  --restart unless-stopped \
  -p 8889:8080 -p 8888:80 \
  -v $PWD/webmame:/usr/share/games/mess/web:rw \
  -v $PWD/cgi-bin/:/usr/local/apache2/cgi-bin:rw \
  -v $PWD/static:/usr/local/apache2/htdocs:rw \
  -v $PWD/httpd.conf:/usr/local/apache2/conf/httpd.conf:rw \
  bioboosterbob/mame:0.0.1
```

## References
