#!/bin/bash


DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

GlITCHTIP_NAMESPACE=redhat-glitchtip

# uninstalling web deployment

echo "deleting web deployment"

oc delete deployment/web $GlITCHTIP_NAMESPACE

# uninstalling database migration deployment 

echo "deleting migration deployment"

oc delete deployment/migrate $GlITCHTIP_NAMESPACE

sleep 3

# uninstalling postgres deployment

echo "deleting postgres delpoyment"

oc delete deployment/postgre $GlITCHTIP_NAMESPACE


echo "Finally deleting redis deployment"

oc delete deployment/redis $GlITCHTIP_NAMESPACE

echo "Finally deleting worker deployment"

oc delete deployment/worker $GlITCHTIP_NAMESPACE

