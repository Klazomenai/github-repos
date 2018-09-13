GitHub repositories defined in Terraform.

## Prerequisites
 - Install [Terraform](https://www.terraform.io/downloads.html).
 - Define your [Organisation in GitHub](https://blog.github.com/2010-06-29-introducing-organizations/) (can't be defined in Terraform).
 - Follow the [Managing GitHub with Terraform](https://www.hashicorp.com/blog/managing-github-with-terraform) instructions for creating your tokens.
 - Fork this repository into your organisation (can't be defined in Terraform yet, resource needs to be written).

## Defining Repositories
 - Clone the forked version of this repository.
 - Add all the repositories you need for your GitHub Organisation in [repositories.tf](repositories.tf). i.e.:
```sh
resource "github_repository" "github-repos" {
  name             = "github-repos"
  description      = "GitHub Repositories"
  license_template = "${var.license_template}"

  private = false
}
```
 - NOTE: Privacy default!
 - NOTE: `license_template` has `default = "agpl-3.0"`.
 - If you require another license, [choose one here](https://choosealicense.com/), then pick the version out of the URL. I.e.: for `agpl-3.0`, the URL is: https://choosealicense.com/licenses/agpl-3.0/

## Exports
 - Ensure the following environment variables are defined in your environment:

```sh
export TF_VAR_organization=""
export TF_VAR_github_token=""
```

## Terraform
 - Its Terraforming time:

```sh
terraform init
terraform plan -out repositories.tfplan
terraform apply repositories.tfplan
```

Note: Don't lose your terraform state until its pushed to a bucket.

