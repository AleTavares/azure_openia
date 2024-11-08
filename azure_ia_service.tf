resource "azurerm_resource_group" "resource_group" {
  name     = var.resource_group_name
  location = var.location
  tags     = local.common_tags
}

resource "azurerm_cognitive_account" "text_tranlator" {
  depends_on          = [azurerm_resource_group.resource_group]
  name                = var.cognitive_name_Tranlation
  location            = azurerm_resource_group.resource_group.location
  resource_group_name = azurerm_resource_group.resource_group.name
  sku_name            = var.skuTranlation
  kind                = var.kindTranlation
}

resource "azurerm_cognitive_account" "text_openia" {
  depends_on          = [azurerm_resource_group.resource_group]
  name                = var.cognitive_name_OpenIA
  location            = azurerm_resource_group.resource_group.location
  resource_group_name = azurerm_resource_group.resource_group.name
  sku_name            = var.skuOpenIA
  kind                = var.kindOpenAI
}


# Cognitive Deployments 
resource "azurerm_cognitive_deployment" "gpt-4o-mini" {
  name                 = "gpt-4o-mini"
  cognitive_account_id = azurerm_cognitive_account.text_openia.id
  model {
    format = "OpenAI"
    name   = "gpt-4o-mini"
  }
  sku {
    name = "Standard"
  }
}