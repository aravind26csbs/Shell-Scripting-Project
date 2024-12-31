#!/bin/bash



######################

#Author: ARAVINDAKUMAR K
#Date : 23-12-2024
#
#
#Version:V1
#
#
#This script will display the usage details of AWS resoures...
################################

#AWS S3
#AWS EC2
#AWS Lambda


# Define the output file
OUTPUT_FILE="/home/ubuntu/Daily_Report.txt"

set -x

## Display list of EC2 Instances
echo "Print list of ec2 Instances">> $OUTPUT_FILE
aws ec2 describe-instances --query "Reservations[].Instances[].[InstanceId,State.Name]">> $OUTPUT_FILE

## Display list of S3 Buckets
echo "Print list of S3 Buckets">> $OUTPUT_FILE
aws s3 ls>> $OUTPUT_FILE

## Display list AWS Lambda
echo "Print list AWS Lambda">> $OUTPUT_FILE
aws lambda list-functions>> $OUTPUT_FILE




