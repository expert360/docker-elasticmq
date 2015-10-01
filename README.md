# ElasticMQ Docker Image

Provides [ElasticMQ](https://github.com/adamw/elasticmq).

## Supported tags and respective `Dockerfile` links
 * [`latest`, `0.8.12` (Dockerfile)](https://github.com/expert360/docker-elasticmq/blob/master/Dockerfile)
 * [`0.8.7` (Dockerfile)](https://github.com/expert360/docker-elasticmq/blob/0.8.7/Dockerfile)

## expert360/elasticmq:latest

Installs the latest version of ElasticMQ and exposes port 9324.

Running should be as simple as:

    docker run -p 9324:9324 -d expert360/elasticmq

If you wish to custimise the settings, mount your config at `/elasticmq/custom.conf`.
