# Timeflow Setup Instructions 

This document describes three options for deploying Timeflow.

## Timeflow Cloud
  
We offer a fully managed version of Timeflow which is accessible at https://app.timeflow.systems.  

## Deploying With Docker

The reccomended route for a self managed deployment is to use Docker. 

### Prerequisites

A recent version of Docker and Docker Compose are required.  

### Setup Your Github Application

Timeflow integrates with Github in order to build your repos and branches.  

There is a small amount of configuration in Github to create an OAuth application.  

### Clone This Repo

Clone this repository.

```
git clone https://github.com/TimeflowCI/timeflow.git
```

### Set Keys In The Docker Compose File

Edit the docker-compose.yml file and the Github client keys that were created above.

```
```

### Run The Application 

Start the application.

```
docker-compose up 
```

## Developer Mode

A single developer can run Timeflow locally and in a single user mode to assist with their dbt development workflow.  This can be started in the following way, replacing _<path-to-your-dbt-project>_ with the path to the project you would like to analyse.  

```
docker-compose up -env TIMEFLOW_ROOT=<path-to-your-dbt-project> -f docker-compose-developer-mode.yml
```
