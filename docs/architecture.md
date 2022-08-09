## Glitchtip architecture


Glitchtip is An Open source Error tracking software and a upstream fork of Sentry. The staging environment is available via https://glitchtip.stage.devshift.net and
the productions environment is in progress.

## The Architecture

Glitchtip's Front-end is written in Angular Js and Node JS, along with some typescript and It's backend is written in python Django, It uses PostgreSQL as its backend database and Redis for a caching layer.

## Features

 * [Error Tracking](https://glitchtip.com/documentation/error-tracking) 
 * [Organization and Project Management](https://glitchtip.com/documentation/uptime-monitoring)
 * [Sentry Client Integration](https://glitchtip.com/sdkdocs)
 * [Application Performance Monitoring]() 
 * [Uptime Monitoring](https://glitchtip.com/documentation/uptime-monitoring) 
 * [Integrations](https://glitchtip.com/documentation/integrations)


## MAIN Components:

1. the `Beat` Deployment - Is responsible for the initial database migration and celery scheduling to the worker nodes.

2. The `Web` Deployment - Is responsible for hosting the Web UI and interface.

3. The `Worker` Deployment - Is responsible for scheduling worker node tasks via the celery jobs spawn via the beat pods.

## Introduction 
- This is a diagram provides a high level overview of the Glichtip Architecture both from a Openshift / Kubernetes perspective and external entities it interacts with such as AWS RDS Potgres and AWS Elacticache. 


![Glitchtip](https://github.com/rh-cssre/glitchtip/blob/update_architecture/images/glitchtiparchitecture.png)

**Note:** This Diagram will need to be updated once onbaording is completed.

## Platform Architecture and Transparency

- User data is stored in Postgres AWS RDS service for both `stating` and `production` environments.
- This includes error data as sent by the Sentry SDK. Glichtip data is configured to be purged every 30 days.

## Resource consumption

- The staging instance of Glitchtip consumes about 96MiB of memory and 0.01 CPU for the `beat` pod component,  when nothing is happening.

    - The database instance that is currently used in stage is db.t3.micro. Its CPU utilization is about
    5% on average and 30% during the load test. The production instance is db.t3.small.
    The S3 bucket space consumed is almost none at the moment but will grow as the Glitchtip service will start being used. The
    space is occupied only by the attachments uploaded by the users. Therefore we do not expect a dramatic change.
