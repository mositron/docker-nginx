#Nginx Image
My Docker Images

[NGINX](https://hub.docker.com/r/positron/nginx) -> [PHP-FPM](https://hub.docker.com/r/positron/php) -> [MONGO](https://hub.docker.com/r/positron/mongo) / [MEMCACHED](https://hub.docker.com/r/positron/memcached)

## Dockerfile
[positron/nginx](https://github.com/positronth/docker-nginx/blob/master/Dockerfile), [positron/nginx:latest](https://github.com/positronth/docker-nginx/blob/master/Dockerfile)

## How to use
Network Mode = host

**docker-compose**
```yaml
  nginx:
    container_name: "nginx"
    image: positron/nginx
    restart: always
    privileged: true
    volumes:
      - /var/www:/var/www
    network_mode: "host"
```

# Package
- nginx:stable

.

# Note
**build**
```
sudo docker build -t positron/nginx -t positron/nginx:latest /home/positron/My/Webs/.docker/nginx/
```
**push**
```
sudo docker push positron/nginx
```

.

for Jarm.com's Server
https://jarm.com
