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

- Visit Developer Settings
- Visit OAuth Apps
- Create an App
- Note down the Client ID and Cliend ID Secret for use in a subsequent step

### Clone This Repo

Clone this repository.

```
git clone https://github.com/TimeflowCI/timeflow.git
cd timeflow
```

### Set Details In The .env File

Copy the example .env file:

```
cp .env.example .env
```

And set the values correctly using the keys saved earlier, replacing the values below.  You'll also need to set the publically accessible IP address of the server you are running on.  

```
SERVER_IP_ADDRESS=123.123.123.123
GITHUB_CLIENT_ID=cc7666ffbafb59c4XXXX
GITHUB_CLIENT_SECRET=377c0ae980a454082c7c4992968f56e881c9XXXX
```

### Run The Application 

Start the application using Docker compose.  

```
docker-compose up 
```

The three services, frontend, backend, and CI server should start with healthy logs.  

## Self Managed Deployment From Source

If you would like to deploy from source instead of using Docker, please visit our [contributing guide](CONTRIBUTING.md) for details of how to clone and run the Timeflow repos.  

## Developer Mode

A single developer can run Timeflow locally and in a single user mode to assist with their dbt development workflow.  This can be started in the following way, replacing _<path-to-your-dbt-project>_ with the path to the project you would like to analyse.  

```
docker-compose up -env TIMEFLOW_LOCAL_PRPOJECT=<path-to-your-dbt-project> -f docker-compose.yml
```
