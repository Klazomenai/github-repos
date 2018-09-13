variable "organization" {
  description = "The name of the GitHub Organisation"
}

variable "github_token" {
  description = "The GitHub token"
}

variable "license_template" {
  description = "Keep left, vote left, copyleft"
  default     = "agpl-3.0"
}

variable "private" {
  description = "GitHub privacy default should be false to aquire more"
  default = "false"
}
