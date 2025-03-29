# Análise Descritiva: RAIS x Censo (1991–2015)

Este projeto apresenta uma análise descritiva da evolução do emprego formal e informal e dos salários no Brasil, com base nos dados da RAIS (1991 a 2015) e do Censo (2000 e 2010), disponibilizados via [BasedosDados.org](https://basedosdados.org/).

## Conteúdo da análise:
-  Série temporal da remuneração média.
-  Análise transversal por estado.
-  Diferença salarial por gênero.


## Relatório 

Este repositório contém uma análise descritiva dos dados da RAIS e Censo (1991–2015), com visualizações interativas, exploração de séries temporais, comparação entre estados e diferenças salariais por gênero.

🔗 [ Visualizar Relatório RAIS e Censo (1991–2015)](https://nbviewer.org/github/raissaalvimt/meu_projeto_rais/blob/main/src/relatorio_rais_censo.ipynb)

## Tecnologias utilizadas:
- R
- Pacotes: `basedosdados`, `dplyr`, `ggplot2`
- BigQuery para extração dos dados públicos

## Como rodar:
1. Instale os pacotes necessários no R.
2. Rode `01_download.R` e `01b_download_censo.R` para obter os dados.
3. Execute `02_analysis.R` para gerar os gráficos.
4. Visualize o notebook em `relatorio_rais_censo.ipynb`.







