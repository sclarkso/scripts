#!/usr/bin/env python
import boto3
session = boto3.Session(profile_name='aws.105')
sydney_client = session.client('ec2', region_name='ap-southeast-2')
ireland_client = session.client('ec2', region_name='eu-west-1')
virginia_client = session.client('ec2', region_name='us-east-1')
response = sydney_client.unmonitor_instances(
    InstanceIds=[
        'XXXXXXXX',
    ],
    DryRun=True
)
response = ireland_client.unmonitor_instances(
    InstanceIds=[
        'xxxxxxxxx',
    ],
    DryRun=True
)
response = virginia_client.unmonitor_instances(
    InstanceIds=[
        'xxxxxxxxxxx',
    ],
    DryRun=True
)
