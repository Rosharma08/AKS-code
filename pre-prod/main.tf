resource "azurerm_resource_group" "rg" {
  for_each = var.rgs
  name     = each.value.name
  location = each.value.location

  tags = {
    environment = "dev"
    owner       = "Rohitsharma"
    project     = "myproject"
  }

  lifecycle {
    prevent_destroy = true
  }
}
