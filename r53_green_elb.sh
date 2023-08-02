#!/bin/bash

aws route53 change-resource-record-sets  --hosted-zone-id Zxxxxxxxxxxxxx  --change-batch file://dns.json
