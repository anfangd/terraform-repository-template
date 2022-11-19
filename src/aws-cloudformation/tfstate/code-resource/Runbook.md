# S3 Bucket & DynamoDB for Terraform

## About


## Runbook

### Env: production

```sh
JSON=$(cat << EOS
[
  {
    "Key": "S3BucketName",
    "Value": "a"
  },
  {
    "Key": "DynamoDBTableName",
    "Value": "b"
  },
  {
    "Key": "EnvironmentName",
    "Value": "c"
  },
  {
    "Key": "ProductName",
    "Value": "d"
  },
  {
    "Key": "TeamName",
    "Value": "e"
  },
  {
    "Key": "Scope",
    "Value": "f"
  }
]
EOS
)
echo $JSON | jq '.[]'

aws_profile='my_aws_profile'
stack_name='terraform-s3-backend'
template_file_path='../template/cfn-tfstate-s3.yaml'

aws cloudformation create-stack \
    --profile "${aws_profile}" \
    --stack-name "${stack_name{" \
    --template-body "file://${template_file_path}" \
    --parameters $(echo $json | jq -r '.[] | .Key + "=" +.Value' | xargs echo | sed -e 's/ /,/g')
```
