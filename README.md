# wait-for-http
Docker image that waits for the HTTP service readiness with auth

Based on alpine 3.10, the curl script (entrypoint file) will check if the `URL` is available, looping each `TIME` until it comes up. This was developed to be used in GitHub Actions, to check if a rabbitMQ instance was available before performing any tests, but can be used with any HTTP service with basic auth.

The Docker Image is available [here](https://hub.docker.com/r/merteam/wait-for-http). <br>
The GitHub Source is available [here](https://github.com/mer-team/wait-for-http).

### ARGS
| Arg | Default | Description |
| --- | --- | --- |
| URL | localhost | URL to check |
| USER | admin | HTTP basic auth username  |
| PASS | admin | HTTP basic auth password |
| TIME | 10 | Timeout to check if the service is up |

### GitHub Action Example
```yaml
steps:
- name: Wait for HTTP 200
      run: docker run -e TIME=10 -e USER=username -e PASS=password -e URL=http://localhost/api --net=host merteam/wait-for-http:latest
```

The `--net=host` allows us to use the host network and so access all the containers locally since the respective ports are forward.