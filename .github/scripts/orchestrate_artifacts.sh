#!/bin/bash

set -e


aws s3api put-object --bucket $AWS_S3_BUCKET_NAME \
  --key $AWS_S3_UPLOAD_PREFIX \
  --body "/metrics_renders/${COMMIT_CALENDAR_FILE}" \
  --content-type "image/svg+xml"
