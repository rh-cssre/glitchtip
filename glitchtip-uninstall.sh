#!/bin/bash


DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

GlITCHTIP_NAMESPACE=redhat-glitchtip

# uninstalling web deployment

echo "deleting web deployment"

oc get all -n $GlITCHTIP_NAMESPACE

# delete all resources by deleting the project 

oc delete -n $GlITCHTIP_NAMESPACE