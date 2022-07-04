#!/bin/bash

set -e

aws --version
env
aws sts get-caller-identity
#   aws s3api put-object --bucket $AWS_S3_BUCKET_NAME \
#   --key "${AWS_S3_KEY_PREFIX}/" --body my_images.tar.bz2

ls -l

cd /metrics_renders

ls -l
      