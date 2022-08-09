## Glitchtip architecture


Glitchtip is An Open source Error tracking software and a upstream fork of Sentry. The staging environment is available via https://glitchtip.stage.devshift.net and
the productions environment is in progress.

## The Architecture

Glitchtip's Front-end is written in Angular Js and Node JS, along with some typescript and Its backend is written and python Django, It uses PostgreSQL as its backend database and Redis for a caching layer.
in [The Architecture Document](./docs/architecture.md).

## Features

 * [Error Tracking](https://glitchtip.com/documentation/error-tracking) 
 * [Organization and Project Management](https://glitchtip.com/documentation/uptime-monitoring)
 * [Sentry Client Integration](https://glitchtip.com/sdkdocs)
 * [Application Performance Monitoring]() 
 * [Uptime Monitoring](https://glitchtip.com/documentation/uptime-monitoring) 
 * [Integrations](https://glitchtip.com/documentation/integrations)


## Introduction 
- This is a diagram provides a high level overview of the Glichtip Architecture both from a Openshift / Kubernetes perspective and external entities it interacts with such as AWS RDS Potgres and AWS Elacticache. 


![Glitchtip](https://github.com/rh-cssre/glitchtip/blob/update_architecture/images/glitchtiparchitecture.png)

**Note:** This Diagram will need to be updated once onbaording is completed.

## Platform Architecture and Transparency

- User data is stored in Postgres AWS RDS service for both `stating` and `production` environments.
- This includes error data as sent by the Sentry SDK. Glichtip data is configured to be purged every 30 days.