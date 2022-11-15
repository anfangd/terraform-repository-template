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
          tfs <command> [options]

OPTIONS
        -t | --target-project (string)
        
        Target Project

        -e | --env (string)

        Environment Name

        -l | --layer (string)

        Layer Name

EXAMPLE
        tfscript plan -t platforms/code-resource -e production -l setup
```
