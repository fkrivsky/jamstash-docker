# Jamstash Docker Image

Docker image for self-hosting [Jamstash](https://github.com/tsquillario/Jamstash) audio player.  

[DockerHub location](https://hub.docker.com/r/fkrivsky/jamstash)

[Github Repo](https://github.com/fkrivsky/jamstash-docker)

TODO:

- try distroless image: <https://github.com/GoogleContainerTools/distroless>

## Usage

With simple run:  
`docker run -d -p 8008:80 fkrivsky/jamstash`

With Compose file:  

```yaml
version: "3"
services:
    app:
        image: 'fkrivsky/jamstash'
        ports:
            - "8008:80"
        restart: unless-stopped
```

## Build

`docker buildx build --push --platform linux/arm/v7,linux/arm64,linux/amd64,linux/386,linux/s390x --tag fkrivsky/jamstash:$(date +"%Y-%m-%d") --tag fkrivsky/jamstash:latest .`

> Need to install architecture support for multi-arch build, eg. `docker run --privileged --rm tonistiigi/binfmt --install all`

---
_Inspired by [uGeek/docker-jamstash](https://github.com/uGeek/docker-jamstash)_
