output "end_point_translator" {
  description = "End Point do Serviço de Translator do Azure Criado"
  value       = nonsensitive(azurerm_cognitive_account.text_tranlator.endpoint)
}

output "subscription_key_translator" {
  description = "End Point do Serviço de Translator do Azure Criado"
  value       = nonsensitive(azurerm_cognitive_account.text_tranlator.primary_access_key)
}

output "end_point_open_ia" {
  description = "End Point do Serviço da OpenIA criado no Azure"
  value       = nonsensitive(azurerm_cognitive_account.text_openia.endpoint)
}

output "subscription_key_open_ia" {
  description = "End Point do Serviço da OpenIA criado no Azure"
  value       = nonsensitive(azurerm_cognitive_account.text_openia.primary_access_key)
}

output "version_api_open_ia" {
  description = "versão da API da OpenIA criado no Azure"
  value       = nonsensitive(azurerm_cognitive_deployment.gpt-4o-mini)
}

output "subscription_location_translator" {
  description = "End Point do Serviço de Translator do Azure Criado"
  value       = nonsensitive(azurerm_cognitive_account.text_tranlator.location)
}

