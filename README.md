# rollbar-agent-dockerfile

Docker for [rollbar-agent](https://github.com/rollbar/rollbar-agent).

## Usage

### build docker
```
docker build --tag rollbar-agent:0.4.0 .
```

### run docker

There's two variable template should be given when running docker.

- ACCESS_TOKEN
- TARGETS

ex.

```
docker run -e ACCESS_TOKEN=123456789 -e TARGETS="/tmp/app1/log.rollbar /tmp/app2/log.rollbar" rollbar-agent:0.4.0
```
