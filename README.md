# 📊 Análise dos Dados da RAIS via Base dos Dados

Este projeto utiliza o pacote `basedosdados` no R para acessar os microdados da RAIS (Relação Anual de Informações Sociais) diretamente do portal [basedosdados.org](https://basedosdados.org/).

---

## 📦 Pré-requisitos

- R >= 4.0.0
- Conta no [Google Cloud Platform](https://console.cloud.google.com/)
- Projeto criado no GCP com o BigQuery ativado
- Chave de autenticação JSON (caso use BigQuery)

---

## 🔧 Instalação do pacote

```r
install.packages("basedosdados")
library(basedosdados)
