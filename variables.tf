variable "env0_api_key" {
  description = "env0 API key"
  type        = string
  sensitive   = true
}

variable "env0_api_secret" {
  description = "env0 API secret"
  type        = string
  sensitive   = true
}

variable "project_id" {
  description = "ID of the env0 project to assign templates to"
  type        = string
}

variable "template_names" {
  description = "List of existing org template names to assign to the project"
  type        = list(string)
  default     = []
}
