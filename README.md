# Análise Descritiva da Evolução do Emprego Formal e Informal e dos Salários no Brasil entre 1991 e 2015

Este projeto realiza uma análise descritiva utilizando dados da RAIS entre 1991 e 2015, obtidos via BigQuery com o pacote `basedosdados`.

## Etapas
1. Extração dos dados via BigQuery
2. Análise de:
   - Séries temporais salariais
   - Comparação entre estados
   - Diferenças salariais por gênero
  
## Objetivos

-  Analisar variações salariais ao longo do tempo (séries temporais)
-  Comparar salários entre os estados (análise transversal)
-  Investigar desigualdades por gênero
-  Incluir dados do Censo de 2000 e 2010 para complementar a análise

---


## 📄 Relatório RAIS x Censo (Notebook Interativo)

> Você pode visualizar o relatório completo com código e gráficos diretamente pelo GitHub aqui:

👉[📊 Visualizar Análise RAIS-Censo no Nbviewer](https://nbviewer.org/github/raissaalvimt/meu_projeto_rais/blob/main/src/relatorio_rais_censo.ipynb)


---

##  Como executar localmente
Execute os scripts na pasta `src/` na seguinte ordem:
1. `01_download.R` – Baixa os dados via basedosdados
2. `02_analysis.R` – Realiza a análise descritiva

### Pré-requisitos:

- R (4.0+)
- Pacotes: `dplyr`, `ggplot2`, `rmarkdown`, `basedosdados`, `DBI`, `bigrquery`, `tidyr`
- Python (caso use Jupyter)
- Kernel R para Jupyter:  
  ```r
  install.packages("IRkernel")
  IRkernel::installspec()






