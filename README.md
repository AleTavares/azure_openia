# Traduzir e Resumir Artigos da internet
A idéia aqui é criar um tradutor de artigos técnicos utilizando a Open IA no Azure e o Azure TextTranslation e depois da Tradução gerar um Resumo.

# Oquê vamos Utilizar
- Terraform ( Para Criar a infra estrutura necessária )
- Azure Services IA ( TextTranslation para traduzir o Texto)
- Azure Open IA ( ( Para gerrar o resumo))
- Python ( para os métoodos de coleta dos textos e tradução)
- Python (StreamLite para gerar as telas)

> [!IMPORTANT]
> Obs: Poderiamos usar apenas 1 serviço da Azure para Traduzir e resumir o texto, porém para fins didáticos decidi usar os dois, e tambem porque ambos tem preços distintos que vocÊ deve observar antes de utilizar.

# Utilizando Este Repo
1. Abra um terminal no seu sistema operacional
2. Clone este repo para o seu computador
```bash
git clone https://github.com/AleTavares/azure_openia.git
```
> [!IMPORTANT]
> Certifique de que o client do git esteja instalado 

2. Entre na pasta do projeto
```bash
cd azure_openia
```

## Criando a Infra Estrutura
> [!IMPORTANT]
> Para este passo você precisará do terraform instalado.
> Caso não tenha siga as instrlçoes [Clicando Aqui](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli) 

1. Inicialize o Diretório
```bash
terraform init
```
2. Criar o arquivo terraform.tfvars com as variaveis necessárias
```terraform
location                  = "East US"         # Região onde vamos criar nossos recursos
resource_group_name       = "rg-tradutor"     # Nome do Resource Group a ser criado
cognitive_name_Tranlation = "tradutor_textos" # Nome que daremos ao nosso serviço tradutor do Translator
skuTranlation             = "F0"              # Tabela de Valores
kindTranlation            = "TextTranslation" # Modelo a ser Utilizado
cognitive_name_OpenIA     = "tradutor_openia" # Nome que daremos ao nosso serviço da OpenIA
skuOpenIA                 = "S0"              # Tabela de Valores do Serviço
kindOpenAI                = "OpenAI"          # Modelo a ser Utilizado
```
> [!NOTE]
> Para o SKU escolha entre: B1, B2, D1, S0, S1, S2, S3, S4, S8, S9. 
> Alguns skus são específicos da região. 
Para mais detalhes consulte [Aqui](https://docs.microsoft.com/en-us/azure/analysis-services/analysis-services-overview#availability-by-region)
3. Autentique o seu Terraform com o Azure. Para mais detalhe clique [Aqui](https://learn.microsoft.com/pt-br/azure/developer/terraform/)
4. Gere o plano de Execução do Terraform
```bash
terraform plan -out plan.out
```
5. Aplique o plano de Execução 
```
terraform apply plan.out
```
> [!IMPORTANT]
> Não esqueça de Destruir os recursos após a utilização utilizando o comando abaixo:
> ```bash
> terraform destroy
> ``` 

## Estrutura de Pastas
-(Root)
    | Exporacao
        | arqs
            | _Like a Prayer.docx - Arquivo para testarmos a LLM de tradução
        | Explorer_tranlation_V1.ipynb - Notebook Python para exploração do Azure Translator
        | Explorer_tranlation_V2.ipynb - Notebook Python para exploração da Open AI
    | azure_ia_service.tf - Arquivo terraform para criar os serviços de IA da Azure
    | locals.tf - Arquivo terraform com as tags comuns 
    | main.tf - Arquivo terraform de Configuração do Provaider
    | outputs.tf - Arquivo terraform para exibir as informações necessarias para o código ao final da criação dos recursos
    | variables.tf - Arquivos teraform com as variaveis utilizadas no projeto

## Próximos passos
- Gerar um aplicativo que se comunique com a nossa infra estrutura e traduza e resuma textos de artigos



