## Repositories
GitHub repositories defined in Terraform. The Organisation must already exist prior to `terraform plan`. Initial example is self defining.

Follow the [Managing GitHub with Terraform](https://www.hashicorp.com/blog/managing-github-with-terraform) instructions for creating your tokens.

Clone this repo, add your Organizationa and start creating repositories.

## Exports
Ensure the following are defined in your environment.

```sh
export TF_VAR_organization=""
export TF_VAR_github_token=""
```

## Terraform
GitHub repositories defined via Terraform

```sh
terraform init
terraform plan -out repositories.tfplan
terraform apply repositories.tfplan
```
