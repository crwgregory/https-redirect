# Overview
Set this up for my company so that we could route all requests coming in on port 80
of our ECS loadbalancer to 443.

## ECS Target Group Health Check
We need a way to tell ECS that our task is healthy, so we need to bypass the redirect.

Send health checks to /health-check.html