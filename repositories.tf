resource "github_repository" "github-repos" {
  name             = "${var.name}"
  description      = "${var.description}"
  license_template = "${var.license_template}"

  private = "${var.private}"
}
