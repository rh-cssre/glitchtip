#!/bin/zsh

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

GlITCHTIP_NAMESPACE=redhat-glitchtip

EMAIL= #updating this to your account details

PASSWORD=""  # update me 
PASSWORD1="" # update me

# Check if OpenShift cli tool is installed
command -v oc >/dev/null 2>&1 || { echo >&2 "OpenShift CLI is required but not installed.  Aborting."; exit 1; } 

# Check if Git is installed
command -v git >/dev/null 2>&1 || { echo >&2 "Git is required but not installed.  Aborting."; exit 1; } 

# Check if Git is installed
command -v helm >/dev/null 2>&1 || { echo >&2 "Helm is required but not installed.  Aborting."; exit 1; } 


# Create the appropriate Namespace

echo "Creating namespace for glitchtip"
oc create ns $GlITCHTIP_NAMESPACE

echo "changing to active namespace"

oc project $GlITCHTIP_NAMESPACE

# Create the SCC for the namespace

echo "Creating SCC account for namespace."

oc adm policy add-scc-to-user anyuid -z glitchtip -n redhat-glitchtip

sleep 5

echo "applying manifests to namespace"

echo "deploying Glitchtip to staging cluster"

oc apply -f ${DIR}/K8s-manifests/


sleep 10

echo " Creating admin user for glitchttip"
$PODNAME="$(oc get pods -n redhat-glitchtip | grep web )" 

oc -n redhat-glitchtip exec -it $PODNAME python manage.py createsuperadmin $EMAIL, $PASSWORD, $PASSWORD1


