#!/bin/bash

set -e


aws s3api put-object --bucket $AWS_S3_BUCKET_NAME \
  --key "${AWS_S3_UPLOAD_PREFIX}${COMMIT_CALENDAR_FILE}" \
  --body "${COMMIT_CALENDAR_FILE}" \
  --content-type "image/svg+xml" \
  --cache-control "no-cache"

aws s3api put-object --bucket $AWS_S3_BUCKET_NAME \
  --key "${AWS_S3_UPLOAD_PREFIX}${LANGUAGES_FILE}" \
  --body "${LANGUAGES_FILE}" \
  --content-type "image/svg+xml" \
  --cache-control "no-cache"
