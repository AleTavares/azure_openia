variable "location" {
  description = "REgião onde ps recursos serão criados no Azure"
  type        = string
}

variable "resource_group_name" {
  description = "Nome para a Resource Group Azure"
  type        = string
}

variable "cognitive_name_Tranlation" {
  description = "Nome para o Serviço no Azure"
  type = string
}

variable "skuTranlation" {
  #  Choose from: B1, B2, D1, S0, S1, S2, S3, S4, S8, S9. Some skus are region specific. 
  #  See https://docs.microsoft.com/en-us/azure/analysis-services/analysis-services-overview#availability-by-region
  description = "Faixa de Preço do servidor Azure Analysis Services a ser criado."
  type = string
}

variable "kindTranlation" {
  description = "Modelo a ser utilizado na criação do Serviço de Cognitive IA"
  type = string
}

variable "cognitive_name_OpenIA" {
  description = "Nome para o Serviço no Azure"
  type = string
}
variable "skuOpenIA" {
  #  Choose from: B1, B2, D1, S0, S1, S2, S3, S4, S8, S9. Some skus are region specific. 
  #  See https://docs.microsoft.com/en-us/azure/analysis-services/analysis-services-overview#availability-by-region
  description = "Faixa de Preço do servidor Azure Analysis Services a ser criado."
  type = string
}

variable "kindOpenAI" {
  description = "Modelo a ser utilizado na criação do Serviço de Cognitive IA"
  type = string
}