#!/usr/bin/env python
######################################################################
#
# This script interacts with a GlitchTip API.
#
#
# Sample Usage
#  $ python ./glitchtip_teams_create.py  -c rhmi2-cssre2 -p 
#
# Cluster ID of the RHMI cluster. It should ALWAYS start with 'rhmi-'
# API Key can be by logging into the instance of Glitchtip under Profile.
#
#
######################################################################

import argparse
import requests

parser = argparse.ArgumentParser(
    description='Main Menu - Commandline Tool to interact with Glitctip API.',
)
parser.add_argument('-c', '--create', required=True,
                    help='name of the cluster')
parser.add_argument('-u', '--url', required=False,
                    help='GlitchTip base url')    
parser.add_argument('-a', '--authtoken', required=False, help='use a glitchtip auth token')                
parser.add_argument('-o', '--organizations', required=True, help='Create a Glitchtip Organization') # only organization creation is functional for now

parser.add_argument('-t', '--teams', required=False, help='Create a Glitchtip team')

args = parser.parse_args()

CREATE_ORG = args.organizations
API_KEY = '' # add auth api key here
GLITCHTIP_URL_ORGANIZATION = 'https://glitchtip-demo-redhat-glitchtip.apps.rhmi2-cssre2.x9f2.p1.openshiftapps.com/api/0/organizations/'

GLITCHTIP_URL_TEAM = 'https://glitchtip-demo-redhat-glitchtip.apps.rhmi2-cssre2.x9f2.p1.openshiftapps.com/api/0/teams/'

payload = {
      "name": CREATE_ORG
}

headers = {
    'Authorization': 'Bearer ' + API_KEY,
    'content-type': 'application/json'
}


response = requests.post( GLITCHTIP_URL_ORGANIZATION, json=payload, headers=headers)

if response.status_code >= 500:
    print('[!] [{0}] Server Error'.format(response.status_code))
elif response.status_code == 404:
    print('[!] [{0}] URL not found: [{1}]'.format(
        response.status_code, GLITCHTIP_URL))
elif response.status_code == 401:
    print('[!] [{0}] Authentication Failed'.format(response.status_code))
elif response.status_code == 400:
    print('[!] [{0}] Bad Request'.format(response.status_code))
elif response.status_code >= 300:
    print('[!] [{0}] Unexpected Redirect'.format(response.status_code))
elif response.status_code == 201:
    data = response.json()
    
    print('Please your organization has been create:' + CREATE_ORG)
else:
    print('[?] Unexpected Error: [HTTP {0}]: Content: {1}'.format(
        response.status_code, response.content))