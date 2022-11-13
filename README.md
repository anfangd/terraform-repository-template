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

### Test GitHub Actions Workflow

Use Act

- [nektos/act: Run your GitHub Actions locally 🚀](https://github.com/nektos/act)


### Restrictions

- Branch Name Reguration

## Documents

### Inspired By

- [TerraformモノレポCIのセキュア化 | メルカリエンジニアリング](https://engineering.mercari.com/blog/entry/20220121-securing-terraform-monorepo-ci/)

### Official

- [Documentation | Terraform | HashiCorp Developer](https://developer.hashicorp.com/terraform/docs)

### Important Practices

- [Terraform ベストプラクティスを整理してみました。 | DevelopersIO](https://dev.classmethod.jp/articles/terraform-bset-practice-jp/)
- [Terraform を使用するためのベスト プラクティス  |  Google Cloud](https://cloud.google.com/docs/terraform/best-practices-for-terraform)

### Others

- [AWSアカウントとVPC、分ける？ 分けない？: 分割パターンのメリット・デメリット | DevelopersIO](https://dev.classmethod.jp/articles/account-and-vpc-dividing-pattern/)
- [shuaibiyy/awesome-terraform: Curated list of resources on HashiCorp's Terraform](https://github.com/shuaibiyy/awesome-terraform)
