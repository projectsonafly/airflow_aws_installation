#!/usr/bin/python

#Prints running EMR Id as an output

import boto3


client = boto3.client('emr', region_name= 'us-east-1')

response = client.list_clusters(
    ClusterStates=['RUNNING']
)

print response[Job_Id] 