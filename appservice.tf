resource "azurerm_resource_group" "app_rg" {
  name     = "proj6-app-rg"
  location = var.location
}

resource "azurerm_app_service_plan" "app_plan" {
  name                = "proj6-appserviceplan"
  location            = azurerm_resource_group.app_rg.location
  resource_group_name = azurerm_resource_group.app_rg.name
  kind                = "Linux"
  reserved            = true

  sku {
    tier = "Basic"
    size = "B1"
  }
}

resource "azurerm_app_service" "app" {
  name                = "proj6-petclinic-app"
  location            = azurerm_resource_group.app_rg.location
  resource_group_name = azurerm_resource_group.app_rg.name
  app_service_plan_id = azurerm_app_service_plan.app_plan.id

  site_config {
    linux_fx_version = "JAVA|17-java17"
  }

  app_settings = {
    WEBSITES_PORT = "8080"
  }
}
