# Projeto RAIS e Censo (1991-2015)

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

## Como rodar
Execute os scripts na pasta `src/` na seguinte ordem:

1. `01_download.R` – Baixa os dados via basedosdados
2. `02_analysis.R` – Realiza a análise descritiva




