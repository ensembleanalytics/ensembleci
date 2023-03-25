
# Contributing To Timeflow

This document describes how to download, run and contribute to the Timeflow source code.  

## Architecture

There are three components to the Timeflow architecture:

- timeflow-frontend - UI layer written in next.js; 
- timeflow-backend - Backend APIs written in Typescript;
- timeflow-ci-server - CI/CD logic and integration layer with Github.
 
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

## CI/CD Process

When pull requests are merged into the main branch, they are built by Docker Hub.  The images are exposed at the following URLs:

```
https://hub.docker.com/r/benjaminwootton81/timeflow-frontend-new
https://hub.docker.com/r/benjaminwootton81/timeflow-backend-new
https://hub.docker.com/r/benjaminwootton81/timeflow-ci-server-new
```

Public Timeflow users pull these images directly when starting the application with the Docker compose file in this repository.

## Development Team

The core developers hang out on our [community Slack channel](https://wearetimeflow.slack.com/).  

Please join to meet the team or with any questions or feedback.
