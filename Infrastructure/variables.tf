variable "environment" {
    type = string 
    description = "The environment for the infrastrucure artifacts to be created"
    validation {
        condition = contains(["dev","qat", "prd"], lower(var.environment))
        error_message = "Unsuported environment specified. Supported environments are : dev, qat, prd"
    }
}

variable "resource_group_location" {
    type = string
    default = "North Europe"
    description = "Location of the resource group"
}

variable "servicedefinition_prefix" {
    type = string 
    description = "Prefix of the service the artifacts belong to"
    validation {
        condition = contains(["ip","data", "infra", "sl"], lower(var.servicedefinition_prefix))
        error_message = "Unsuported service specified. Supported environments are : dev, qat, prd"
    }
}    

variable "generalprefix" {
    type = string    
    description = "general prefix according to naming standard"
}