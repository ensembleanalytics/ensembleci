# Timeflow Setup Instructions 

This document describes how to setup Timeflow.

## Prerequisites

The easiest route is to install Timeflow using Docker.

A recent version of Docker and Docker Compose are the only pre-requisites in this case.

## Setup Your Github Application

Timeflow integrates with Github in order to build your repos and branches.  

There is a small amount of config in Github.  

## Clone This Repo

This repository is the only one you need.

```
git clone https://github.com/TimeflowCI/timeflow.git
```

## Set Keys In The Docker Compose File

Edit the docker-compose.yml file and set your Github client keys.

```
```

## Run The Application 

```
docker-compose up 
```


# Developer Mode

A single developer can run Timeflow locally and in a single user mode to assist with their dbt developer workflow.  This can be started in the following way, replacing _<path-to-your-dbt-project>_ with the path to the project you would like to analyse.  

```
docker-compose up -env TIMEFLOW_ROOT=<path-to-your-dbt-project> -f docker-compose-developer-mode.yml
```
