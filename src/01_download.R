# 01_download.R
# Baixa dados da RAIS via BasedosDados (BigQuery)

library(basedosdados)
library(dplyr)

# Define o projeto do Google Cloud
set_billing_id("projeto-rais-2025")

# Anos da RAIS a coletar
anos <- 1991:2015
dados_rais <- list()

for (ano in anos) {
  print(paste("Baixando dados do ano", ano))
  
  query <- paste0("
    SELECT ano, sigla_uf, sexo, faixa_remuneracao_media_sm
    FROM `basedosdados.br_me_rais.microdados` 
    WHERE ano = ", ano, " 
      AND faixa_remuneracao_media_sm IS NOT NULL
      AND sexo IS NOT NULL
    LIMIT 100000")

  df <- read_sql(query, page_size = 10000)
  dados_rais[[as.character(ano)]] <- df
}

# Combinar tudo
rais <- bind_rows(dados_rais)
write.csv(rais, 'data/rais_amostra_1991_2015.csv', row.names = FALSE)
