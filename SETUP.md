# Timeflow Setup Instructions 

There are four options for deploying Timeflow.

- [Self Managed Deployment With Docker](https://github.com/TimeflowCI/timeflow/blob/main/SETUP.md#self-managed-deployment-with-docker)
- [Self Managed Deployment From Source](https://github.com/TimeflowCI/timeflow/blob/main/SETUP.md#self-managed-deployment-from-source)
- [Single Developer Mode](https://github.com/TimeflowCI/timeflow/blob/main/SETUP.md#single-developer-mode)
- [Timeflow Cloud](https://github.com/TimeflowCI/timeflow/blob/main/SETUP.md#timeflow-cloud)







## Self Managed Deployment With Docker

The recommended route for a self managed deployment is to use Docker. 

#### 1) Install Docker and Docker Compose

A recent version is recomended.   

#### 2) Setup Your Github Side Application

Timeflow integrates with Github in order to build your repos and branches.  

There is a small amount of manual configuration in Github to enable this interaction to take place with your own account.  

1. Visit the OAuth Apps area of Developer Settings - https://github.com/settings/developers
2. Create a new app with the settings below, substituting in the publically accessible IP which you will use to host Timeflow
<center><img src="/oauthapp.png" width="900"/></center>
3. Register your app
4. Note down the Client ID and Client ID Secret for use in a subsequent step

Timeflow will interact with this application, meaning that you have no dependence on any centralised service. 

#### 3) Clone This Repo

The next step is to clone this repository.

```
git clone https://github.com/TimeflowCI/timeflow.git
cd timeflow
```

#### 4) Set Details In The .env File

Copy the example .env file:

```
cp .env.example .env
```

Edit the .env file and set the values correctly using the keys saved earlier, replacing the values below.  You'll also need to set the publically accessible IP address of the server you are running on.  

```
SERVER_IP_ADDRESS=123.123.123.123
GITHUB_CLIENT_ID=cc7666ffbafb59c4XXXX
GITHUB_CLIENT_SECRET=377c0ae980a454082c7c4992968f56e881c9XXXX
```

#### 5) Run The Application 

Start the application using Docker compose.  

```
docker-compose up 
```

If everything has gone well, the three services, frontend, backend, and CI server should start with healthy logs.  

#### 6) Access The Application

The frontend applications should be available at http://localhost:3000.

#### 7) Port Forwarding

Github will call the CI server with webhooks whenever new code is checked into your monitored repos.  

Depending on your networking setup, you may need to setup port forwarding to connect from your public facing router to the server where Timeflow is running.  





## Self Managed Deployment From Source

If you would like to deploy from source instead of using Docker, please visit our [contributing guide](CONTRIBUTING.md) for details of how to clone and run the Timeflow repos.  






## Single Developer Mode

A developer can run Timeflow locally and in a single user mode to assist with their dbt development workflow.  

#### 1) Clone The Repository

The first step is to clone this repository.

```
git clone https://github.com/TimeflowCI/timeflow.git
cd timeflow
```

#### 2) Set The Environment Variable

Export the following environment variable to point towards your project:

```
export TIMEFLOW_DEVELOPER_MODE_PROJECT_PATH=/path/to/your/dbt/project
```

Start the application using Docker compose.  

```
docker-compose up 
```

If everything has gone well, the three services, frontend, backend, and CI server should start with healthy logs.  

#### 3) Access The Application

The frontend applications should be available at http://localhost:3000.
  

## Timeflow Cloud
  
We offer a fully managed version of Timeflow which is accessible at https://app.timeflow.systems.  This avoids the need to host and operate the platform yourself.  
