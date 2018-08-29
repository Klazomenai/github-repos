resource "github_repository" "github-repos" {
  name             = "github-repos"
  description      = "GitHub Repositories"
  license_template = "${var.license_template}"

  private = false
}
