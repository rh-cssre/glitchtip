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



### GlitchTip Architecture Overview

![Glitchtip] (glitchtiparchitecture.png)


### Video Demo

- Review install instructions from asciicinema below.

[![asciicast](https://asciinema.org/a/pUWA9FVVlS2cXUV5V9YWVqB6e.svg)](https://asciinema.org/a/pUWA9FVVlS2cXUV5V9YWVqB6e)

*Note:* The default values assume a externally managed PostgresSQL database and external Redis. Redis in GlitchTip is ephemeral.

