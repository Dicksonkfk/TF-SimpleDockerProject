variable "docker_image_name" {
  type        = string
  description = "Any non-empty string here will replace default name of bucket `var.domain_name`"
  default     = "nginx"
}

variable "docker_container_name" {
  type        = string
  description = "Any non-empty string here will replace default name of bucket `var.domain_name`"
  default     = "Docker-Server"
}