# A CI/CD Platform For Data Engineers

Timeflow is a Continuous Integration and Continuous Delivery (CI/CD) platform designed specifically for the needs of Data Engineers.  It is built around the open source project [dbt Core](https://github.com/dbt-labs/dbt-core), a new but rapidly adopted tool that is used for defining and executing data transformations using SQL.

<img src="/screenshot.png" width="900"/>
 
# Why Use Timeflow?

Timeflow is designed to help Data Teams improve the quality, reliability and timeliness of their data pipelines whilst also simplifying their stack.  This is achieved by:

- Automating deployments into development and testing environments as code is committed into source control;
- Implementing a controlled development lifecycle around data transformation code;
- Ensuring that automated tests are developed and ran throughout defined data transformation pipelines;
- Improving collaboration and visibility within Data Engineering teams with a current state view of project health.

# Building On dbt Core

Timeflow is built around the open source project [dbt Core](https://github.com/dbt-labs/dbt-core), a new but rapidly adopted tool that is used for defining and executing data transformations using SQL.

Though dbt Core moves Data Engineering forward by enabling best practices such as source controlled SQL, reusable modular code and automated testing, it does not impose a development process or "path to production".

This leaves data teams with the problem of agreeing their development workflow, and then automating it using a CI/CD platform such as Jenkins, Gitlab or Github Actions, or perhaps an orchestrator such as Airflow or Dagster.

Though these tools are undoubtedly powerful, they are general purpose, and can require complex custom scripting and ongoing maintenence. Building a fully featured pipeline often becomes a distraction for data teams who would prefer to be working on higher value activities than automating deployments.

Recognising this, Timeflow has been developed specifically to solve the problem of CI/CD for Data Engineers who use dbt. This allows us to build a more opinionated, out of the box experience and a user experience that is tailored specifically for Data Engineers.

# How To Run Timeflow

There are a number of different deployment models depending on your needs.  

Please visit our [setup document](SETUP.md) for more details on how to deploy Timeflow.

# Help & Next Steps

- Learn more about Timeflow at [our website](https://timeflow.systems)
- Join our [Discord community](https://discord.gg/hguMJkk9fX) to learn more or provide feedback.  
- Follow the team on Twitter @WeAreTimeflow for the latest product updates
- Learn more about Data Engineering at [Timeflow Academy](https://timeflow.academy)
