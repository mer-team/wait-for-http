# wait-for-http
Docker image that waits for the HTTP service readiness with auth

Based on alpine 3.10, the curl script (entrypoint file) will check if the `URL` is available, looping each `TIME` until it comes up. This was developed to be used in GitHub Actions, to check if a rabbitMQ instance was available before performing any tests, but can be used with any HTTP service with basic auth.

The Docker Image is available [here](https://hub.docker.com/r/merteam/wait-for-http).

### ARGS
```URL``` - URL to check <br>
```USER``` - HTTP basic auth username <br>
```PASS``` - HTTP basic auth password <br>
```TIME``` - Timeout to check if the service is up 

