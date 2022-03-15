## Glitchtip architecture

## Introduction 
- This is a diagram provides a high level overview of the Glichtip Architecture both from a Openshift / Kubernetes perspective and external entities it interacts with such as AWS RDS Potgres and AWS Elacticache. 


![Glitchtip](https://github.com/rh-cssre/glitchtip/blob/update_architecture/images/glitchtiparchitecture.png)

**Note:** This Diagram will need to be update once onbaording is completed.

## Platform Architecture and Transparency

- User data is stored in Postgres AWS RDS service for both `stating` and `production` environments.
- This includes error data as sent by the Sentry SDK. Glichtip data is configured to be purged every 30 days.