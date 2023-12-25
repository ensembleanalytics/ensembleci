# A CI/CD Platform For Data Engineers Who Use dbt

[Ensemble CI](https://ensembleanalytics.io) is an Open Source Continuous Integration and Continuous Delivery (CI/CD) platform designed specifically for the needs of Data Engineers.  

It is built around the open source project [dbt Core](https://github.com/dbt-labs/dbt-core), a new but rapidly adopted tool that is used for defining and executing data transformation pipelines using SQL.
  
<img src="/screenshots/screenshot.png" width="900"/>
 
# Why Use Ensemble CI?

Ensemble CI is designed to help Data Engineering Teams improve the quality, reliability and speed of their data transformation pipelines.  This is achieved by:

- Automating deployments into development and testing environments as code is committed into source control;
- Implementing a controlled development lifecycle or "path to production" for data transformation code;
- Ensuring that automated tests are continually ran and results made visible;
- Improving collaboration and visibility within Data Engineering teams with a current state view of project and data health.

# Building On dbt Core

Ensemble CI is built around the open source project [dbt Core](https://github.com/dbt-labs/dbt-core), a new but rapidly adopted tool that is used for defining and executing data transformation pipelines using SQL.

Though dbt Core [moves Data Engineering forward](https://ensembleanalytics.io/blog/how-dbt-enables-a-software) by enabling best practices such as source controlled SQL, reusable modular code and automated testing, it does not impose a development process or "path to production".

This leaves data teams with the problem of agreeing their development workflow, and then automating it using a CI/CD platform such as Jenkins, Gitlab or Github Actions, or perhaps an orchestrator such as Airflow or Dagster.

Though these tools are undoubtedly powerful, they are general purpose, and can require complex custom scripting and ongoing maintenence. Building a fully featured pipeline often becomes a distraction for data teams who would prefer to be working on higher value activities than automating deployments.

Recognising this, Timeflow has been developed specifically to solve the problem of CI/CD for Data Engineers who use dbt. This allows us to build a more opinionated, out of the box experience and a user experience that is tailored specifically for Data Engineers.

# How To Run Ensemble CI

There are a number of different deployment models depending on your needs.  Please visit our [setup document](SETUP.md) for more details.

# Help & Next Steps

- Learn more about Ensemble CI at [our website](https://ensembleanalytics.io);
- Read our [introductory blog post](https://ensembleanalytics.io/blog/introducing-ensemble-ci);
- Follow the team on Twitter [@we_are_ensemble](https://twitter.com/we_are_ensemble) for the latest product updates;
