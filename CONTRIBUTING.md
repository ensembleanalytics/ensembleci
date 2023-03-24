
# Contributing To Timeflow

Timeflow is written in Typescript and Next.js.  

Our codebase is split across three publically available repositories.

## Developing Timeflow 

Begin by cloning these three repos:
  
```
git clone https://github.com/TimeflowCI/timeflow-frontend.git
git clone https://github.com/TimeflowCI/timeflow-backend.git
git clone https://github.com/TimeflowCI/timeflow-ci-server.git
```
 
The three components can then be started with devstart.sh.

# Slack

The core developers hang out on our [community Slack channel](https://wearetimeflow.slack.com/).

# CI/CD Process

When pull requests are merged into the main branch, they are built by Docker Hub.  The images are exposed at the following URLs:

```
```

Timeflow users then pull these images directly when starting the application with Docker Compose.  
