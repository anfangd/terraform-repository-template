#!/usr/bin/env bash

profile_name=$1
bucket_name=$2

aws s3 mb "s3://$bucket_name" \
  --profile "$profile_name"

aws s3api put-bucket-versioning \
  --profile "$profile_name" \
  --bucket "$bucket_name" \
  --versioning-configuration Status=Enabled

aws s3api put-bucket-encryption \
  --profile "$profile_name" \
  --bucket  "$bucket_name"  \
  --server-side-encryption-configuration file://config/config-public-access-block.json

aws s3api put-public-access-block \
  --profile "$profile_name" \
  --bucket "$bucket_name" \
  --public-access-block-configuration file://config/config-public-access-block.json
