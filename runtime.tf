variable "runtime" {
  description = "Runtime template of a Function. Currently supported: php74 and python38"
  type = string
  default = "php74"
  validation {
    condition = (
    contains(["php74", "python38"], var.runtime)
    )
    error_message = "Unsupported runtime!"
  }
}

# Officially supported runtimes: https://cloud.google.com/functions/docs/concepts/exec#runtimes
variable "runtime_map" {
  type = map(object({
    available_memory_mb = number
    timeout = number
  }))

  default = {
    # for PHP74 let's go with 128Mb + 60sec limitations (to mention in SLA topic!)
    php74 = {
      available_memory_mb = 128
      timeout = 60
    }, 
    python38 = {
      available_memory_mb = 128
      timeout = 60
    }
  }
}

locals {
  runtime_configuration = lookup(var.runtime_map, var.runtime)
}
