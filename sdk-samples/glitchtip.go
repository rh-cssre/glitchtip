package main

import (
    "errors"
    "time"
    "github.com/getsentry/sentry-go"
)


func main() {
    sentry.Init(sentry.ClientOptions{
        Dsn: "https://91075b22468e4107bf6f4a93da665552@glitchtip-demo-redhat-glitchtip.apps.rhmi2-cssre2.x9f2.p1.openshiftapps.com/2",
    })
   sentry.CaptureException(errors.New("my error"))
    // Since sentry emits events in the background we need to make sure
    // they are sent before we shut down
    sentry.Flush(time.Second * 5)
}
