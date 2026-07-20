variable "api_id" {
  description = "The identifier of the API this route belongs to."
  type        = string
}

variable "route_key" {
  description = "The route key (e.g. \"GET /api/health\" or \"$default\")."
  type        = string
}

variable "target" {
  description = "The target for the route, typically \"integrations/<integration_id>\"."
  type        = string
}

variable "authorization_type" {
  description = "Authorization type: NONE, AWS_IAM, JWT, or CUSTOM."
  type        = string
  default     = "NONE"

  validation {
    condition     = contains(["NONE", "AWS_IAM", "JWT", "CUSTOM"], var.authorization_type)
    error_message = "authorization_type must be one of NONE, AWS_IAM, JWT, CUSTOM."
  }
}

variable "authorizer_id" {
  description = "The authorizer identifier when authorization_type is JWT or CUSTOM."
  type        = string
  default     = null
}
