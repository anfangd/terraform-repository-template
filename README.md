# terraform-repository-template

## Prerequisite

- Task as Task Runner
- Terraform
- Docker
- AWS IAM Role

## Set-up

### git

```sh
# git hooks
git config core.hooksPath .githooks
chmod -R +x .githooks/

# git commit message template
git config commit.template .gitmessage
```

### Task Runner

[Installation | Task](https://taskfile.dev/installation/)

```sh
task
task help

task hello

task docker-init

task local-setup
task docker-setup

task docker-run
task docker-stop
task docker-destroy
task docker-restart
task docker-console

task create-tfstate-bucket

```

## How to Use

### Module Tagging

## Development

### Branch & Environment Strategy

- main-feature branch
- Use directories to control environment

### Test GitHub Actions Workflow

Use Act

- [nektos/act: Run your GitHub Actions locally ð](https://github.com/nektos/act)


### Restrictions

- Branch Name Reguration

## Documents

### Inspired By

- [Terraformã¢ãã¬ãCIã®ã»ã­ã¥ã¢å | ã¡ã«ã«ãªã¨ã³ã¸ãã¢ãªã³ã°](https://engineering.mercari.com/blog/entry/20220121-securing-terraform-monorepo-ci/)

### Official

- [Documentation | Terraform | HashiCorp Developer](https://developer.hashicorp.com/terraform/docs)

### Important Practices

- [Terraform ãã¹ããã©ã¯ãã£ã¹ãæ´çãã¦ã¿ã¾ããã | DevelopersIO](https://dev.classmethod.jp/articles/terraform-bset-practice-jp/)
- [Terraform ãä½¿ç¨ããããã®ãã¹ã ãã©ã¯ãã£ã¹ Â |Â  Google Cloud](https://cloud.google.com/docs/terraform/best-practices-for-terraform)

### Others

- [AWSã¢ã«ã¦ã³ãã¨VPCãåããï¼ åããªãï¼: åå²ãã¿ã¼ã³ã®ã¡ãªããã»ãã¡ãªãã | DevelopersIO](https://dev.classmethod.jp/articles/account-and-vpc-dividing-pattern/)
- [shuaibiyy/awesome-terraform: Curated list of resources on HashiCorp's Terraform](https://github.com/shuaibiyy/awesome-terraform)
