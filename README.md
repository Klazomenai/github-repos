GitHub repositories defined in Terraform.

## Prerequisited
 - Define your Organisation (can't be defined in Terraform).
 - Follow the [Managing GitHub with Terraform](https://www.hashicorp.com/blog/managing-github-with-terraform) instructions for creating your tokens.
 - Clone this repo and start adding repositories.

## Defining Repositories

## Exports
Ensure the following are defined in your environment.

```sh
export TF_VAR_organization=""
export TF_VAR_github_token=""
```

## Terraform
```sh
terraform init
terraform plan -out repositories.tfplan
terraform apply repositories.tfplan
```
