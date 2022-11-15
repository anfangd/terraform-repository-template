# S3 Bucket for Terraform tfstate 

You can create the backend resources ( S3 & DynamoDB ) for terraform using this template.

![](./docs/img/architecture.drawio.svg)

## Setup

```sh
brew install awscli jq
```

## How to Use

```sh
aws cloudformation create-stack \
    --profile "${profile_name}"
    --stack-name "${stack_name}" \
    --template-body "file://${template_file_path}" \
    --parameters $params
```

### Example

```sh
json=$(cat << EOS
[
  {
    "Key": "S3BucketName",
    "Value": "my-tfstate-s3bucket"
  },
  {
    "Key": "DynamoDBTableName",
    "Value": "MyTFStateLockTable"
  },
  {
    "Key": "EnvironmentName",
    "Value": "development"
  },
  {
    "Key": "ProductName",
    "Value": "myproduct"
  },
  {
    "Key": "TeamName",
    "Value": "infra"
  },
  {
    "Key": "Scope",
    "Value": "foundation"
  }
]
EOS
)
echo $json | jq '.[]'

aws_profile='my_aws_profile'
stack_name='terraform-s3-backend'
template_file_path='../template/cfn-tfstate-s3.yaml'

aws cloudformation create-stack \
    --profile "${aws_profile}" \
    --stack-name "${stack_name{" \
    --template-body "file://${template_file_path}" \
    --parameters $(echo $json | jq -r '.[] | .Key + "=" +.Value' | xargs echo | sed -e 's/ /,/g')
```
