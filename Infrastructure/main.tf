
resource "azurerm_resource_group" "rg" {
  name     = "${lower(var.servicedefinition_prefix)}-azrg-${var.environment}"
  location = var.resource_group_location
}