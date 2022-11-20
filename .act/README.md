# Data set for testing GitHub Actions workflows

```sh
act workflow_call -e .act/run-codebuild/test-call.yml --container-architecture linux/amd64

act workflow_call -e .act/terraform-plan/test-pr.yml --container-architecture linux/amd64
```
