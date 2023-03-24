# Timeflow Setup Instructions 

This document describes four options for deploying Timeflow.

## Timeflow Cloud
  
We offer a fully managed version of Timeflow which is accessible at https://app.timeflow.systems.  


## Self Managed Deployment With Docker

The recommended route for a self managed deployment is to use Docker. 

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
- NEXT_PUBLIC_GITHUB_CLIENT_ID=cc7666ffbafb59c4XXXX
- GITHUB_CLIENT_ID=cc7666ffbafb59c4XXXX
- GITHUB_CLIENT_SECRET=377c0ae980a454082c7c4992968f56e881c9XXXX
```

### Run The Application 

Start the application using Docker compose.  

```
docker-compose up 
```

The three services should start with healthy logs.  

## Self Managed Deployment From Source

If you would like to deploy from source instead of using Docker, please visit our [contributing guide](CONTRIBUTING.md) for details of how to clone and run the Timeflow repos.  

## Developer Mode

A single developer can run Timeflow locally and in a single user mode to assist with their dbt development workflow.  This can be started in the following way, replacing _<path-to-your-dbt-project>_ with the path to the project you would like to analyse.  

```
docker-compose up -env TIMEFLOW_LOCAL_PRPOJECT=<path-to-your-dbt-project> -f docker-compose.yml
```
