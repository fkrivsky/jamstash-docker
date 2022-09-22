# Jamstash Docker Image

Docker image for self-hosting [Jamstash](https://github.com/tsquillario/Jamstash) audio player.  

## Usage

`docker run -d -p 80:80 fkrivsky/jamstash`

## Build

`docker build -t fkrivsky/jamstash:22.09.1_4.7.2 . && docker tag fkrivsky/jamstash:22.09.1_4.7.2 fkrivsky/jamstash:latest`
