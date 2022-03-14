# glitchtip
Work In progress repository for GlitchTip Demos 


- This is the base repo for the glitchtip demo based repo. Glitchtip is and open source error tracking application, which can be managed or shelf hosted. 

Based here https://glitchtip.com/documentation


### Required command line (CLI) tools

- Gitlab: [git](https://gitlab.com/glitchtip)
- OpenShift: [oc](https://docs.openshift.com/container-platform/4.2/cli_reference/openshift_cli/getting-started-cli.html#cli-installing-cli_cli-developer-commands)
- Golang: [Go-lang] (https://golang.org/)
- Operator-sdk: [operator-sdk](https://sdk.operatorframework.io/)
- Kustomize: [kam](https://kubectl.docs.kubernetes.io/installation/kustomize/)
- Kompose: [kompose](https://kompose.io/getting-started/)


## Configuration
- Required environment variables:

- `SECRET_KEY` set to any random string
- Set up email:
- `EMAIL_URL:` SMTP string. It will look something like `"smtp://email:password@smtp_url:port"`. See format examples here.
- Alternatively, use the Mailgun API by setting MAILGUN_API_KEY and MAILGUN_SENDER_DOMAIN. Set `EMAIL_BACKEND` to `anymail.backends.mailgun.EmailBackend
- `DEFAULT_FROM_EMAIL` Default from email address. Example `info@example.com`
- `GLITCHTIP_DOMAIN` Set to your domain. Include scheme (http or https). Example: `https://glitchtip.example.com.`

### Optional environment variables:

- `I_PAID_FOR_GLITCHTIP` Donate, set this to "true", and some neat things will happen. This won't enable extra features but it will enable our team to continue building GlitchTip. We pay programmers, designers, illustrators, and free tier hosting on app.glitchtip.com without venture capital. - We ask that all self-host users pitch in with a suggested donation of $5 per month per user. 
- `GLITCHTIP_MAX_EVENT_LIFE_DAYS` (Default 90) Events and associated data older than this will be deleted from the database
- `REDIS_URL` Set redis host explicitly. Example: `redis://:password@host:port/database`. You may also set them separately with `REDIS_HOST`, `REDIS_PORT`, `REDIS_DATABASE`, and `REDIS_PASSWORD`.
- DATABASE_URL Set PostgreSQL connect string. PostgreSQL 11 and above are supported.
- Content Security Policy (CSP) headers are enabled by default. In most cases there is no need to change these. However you may add environment variables as documented in `django-csp` to modify them. For example, set `CSP_DEFAULT_SRC='self'`,scripts.example.com to modify the default CSP header. **Note** the usage of comma separated values and single quotes on certain values such as 'self'.
- `ENABLE_OPEN_USER_REGISTRATION` (Default False) Set to True to allow any user to register. When False, user self sign up is disabled after the first organization is created. This setting may be useful for SaaS services or self hosting that encourage peers to sign themselves up.


### GlitchTip Architecture Overview

![Glitchtip](https://github.com/rh-cssre/glitchtip/blob/update_architecture/images/glitchtiparchitecture.png)


### Video Demo

- Review install instructions from asciicinema below.

[![asciicast](https://asciinema.org/a/pUWA9FVVlS2cXUV5V9YWVqB6e.svg)](https://asciinema.org/a/pUWA9FVVlS2cXUV5V9YWVqB6e)

*Note:* The default values assume a externally managed PostgresSQL database and external Redis. Redis in GlitchTip is ephemeral.

