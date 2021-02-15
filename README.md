# websdr-docker

WebSDR in Docker, no binary included.

```
docker run -d 
  --name websdr \
  --network host \
  --restart always \
  -p 80:80
  -v /path/to/websdr:/usr/bin/websdr \
  bclswl0827/websdr-docker:latest
```
