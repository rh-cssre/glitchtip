#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

GlITCHTIP_NAMESPACE=redhat-glitchtip

# Check if OpenShift cli tool is installed
command -v oc >/dev/null 2>&1 || { echo >&2 "OpenShift CLI is required but not installed.  Aborting."; exit 1; } 

# Check if Git is installed
command -v git >/dev/null 2>&1 || { echo >&2 "Git is required but not installed.  Aborting."; exit 1; } 

# Check if Git is installed
command -v helm >/dev/null 2>&1 || { echo >&2 "Helm is required but not installed.  Aborting."; exit 1; } 


# Create the appropriate Namespace

oc create ns $GlITCHTIP_NAMESPACE

# Create the SCC for the namespace


oc apply -f ${DIR}/K8s-manifests/
