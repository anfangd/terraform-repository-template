# terraformo mono repo


```sh
> tree -L 1
.
├── README.md
├── docs
├── modules          # Cross Project Modules
├── examples         # Example of Cross Project Modules
├── platforms        # Projects of platforms
├── infrastructures  # Projects of Infrastructures
├── services         # Projects of Services
├── web-site         # Projects of Web Site
├── tfs              # Wrapper Script of terraform
└── tfs.config.yml   # Configuration for tfs
```

```sh
NAME
        tfscript 

DESCRIPTION
        The Terraform wapper Script is a wrapper script for 
        executing terraform.

SYNOPSIS
          tfscript <subcommand> -d <working directory> -e <environment name> -l <layer name> [args]

Subcommands:
        validate   Execute 'terraform validate'
        plan       Execute 'terraform plan'
        apply      Execute 'terraform apply'
        destroy    Execute 'terraform destroy'
        fmt        Execute 'terraform fmt'
        import     Execute 'terraform import'
        show       Execute 'terraform show'
        test       Execute 'terraform test'
        version    Execute 'terraform version'
        providers  Execute 'terraform providers'
        state      Execute 'terraform state'
        workspace  Execute 'terraform workspace'
        config     Show config
        lint       Execute 'tflint'
        update     Execute 'tfupdate'
        sec        Execute 'tfsec'

OPTIONS
        -d | --dir | --dir= (string)
        
        Switch to a different working directory before executing the
        given subcommand.

        -e | --env | --env= (string)

        Environment Name

        -l | --layer | --layer= (string)

        Layer Name

EXAMPLE
        tfscript plan -d platforms/code-resource -e production -l setup
```

## Execute Process Flow


![](./docs/img/concept.drawio.svg)
![](./docs/img/basic-flow.drawio.svg)
![](./docs/img/execute-all-layer.drawio.svg)
![](./docs/img/github-actions.drawio.svg)
![](./docs/img/github-pull-request.drawio.svg)
![](./docs/img/aws-codebuild-plan.drawio.svg)
![](./docs/img/aws-codebuild-apply.drawio.svg)
