# An Open Source CI/CD Platform For Data Engineers

Timeflow is a Continuous Integration and Continuous Delivery platform designed specifically for the needs of Data Engineers.

It is designed to help businesses improve the quality, reliability and timeliness of their data pipelines.

This is achieved by improving collaboration within data teams, and by implementing an automated but controlled development lifecycle around their data transformation code.

# Building On dbt Core

Timeflow is built around the open source project [dbt Core](https://github.com/dbt-labs/dbt-core), a new but rapidly adopted tool that is used for defining and executing data transformations using SQL.

Though dbt Core moves Data Engineering forward by enabling best practices such as source controlled SQL, reusable modular code and automated testing, it does not impose a development process or "path to production".

This leaves data teams with the problem of agreeing their development workflow, and then automating it using a CI/CD platform such as Jenkins, Gitlab or Github Actions, or perhaps an orchestrator such as Airflow or Dagster.

Though these tools are undoubtedly powerful, they are general purpose, and can require complex custom scripting and ongoing maintenence. Building a fully featured pipeline often becomes a distraction for data teams who would prefer to be working on higher value activities than automating deployments.

Recognising this, Timeflow has been developed specifically to solve the problem of CI/CD for Data Engineers who use dbt. This allows us to build a more opinionated, out of the box experience and a user experience that is tailored specifically for Data Engineers.

# Running Timeflow

Clone this repo.

```
docker-compose 
```

# Building From Source

Clone the following repos.

```

```

```
docker-compose
```
