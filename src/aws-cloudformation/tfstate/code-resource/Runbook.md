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

aws cloudformation create-stack \
    --profile xxx
    --stack-name tf-s3-backend \
    --template-body file://../template/cfn-tfstate-s3.yaml \
    --parameters $(echo $JSON | jq -r '.[] | .Key + "=" +.Value' | xargs echo | sed -e 's/ /,/g')
```
