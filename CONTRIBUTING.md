
# Contributing To Timeflow

This document describes how to download and run the Timeflow source code.  

## Codebase

Our codebase is split across three publically available repositories.

```
git clone https://github.com/TimeflowCI/timeflow-frontend.git
git clone https://github.com/TimeflowCI/timeflow-backend.git
git clone https://github.com/TimeflowCI/timeflow-ci-server.git
```

## Running 

Each of these repos has a shell script to start the relevant process:

```
sh startdev.sh
```

## Language

Timeflow is written in Typescript and Next.js.  

# CI/CD Process

When pull requests are merged into the main branch, they are built by Docker Hub.  The images are exposed at the following URLs:

```
https://docker.com/hub
https://docker.com/hub
https://docker.com/hub
```

Timeflow users pull these images directly when starting the application with Docker Compose.  

# Development Team

The core developers hang out on our [community Slack channel](https://wearetimeflow.slack.com/).  Please join to meet the name or with any questions or feedback.
