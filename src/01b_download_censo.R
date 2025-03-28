# 01b_download_censo.R
# Baixa amostra dos dados do Censo (2000 e 2010) via BasedosDados

library(basedosdados)
library(dplyr)

set_billing_id("projeto-rais-2025") # substitua se mudar de projeto

anos_censo <- c(2000, 2010)
dados_censo <- list()

for (ano in anos_censo) {
  print(paste("Baixando Censo", ano))
  
  tabela <- ifelse(ano == 2000,
                   "basedosdados.br_ibge_censo_2000.amostra_pessoa",
                   "basedosdados.br_ibge_censo_2010.microdados")

  query <- paste0("
    SELECT ano, sexo, renda, uf
    FROM `", tabela, "`
    WHERE renda IS NOT NULL
    AND sexo IS NOT NULL
    LIMIT 100000
  ")

  df <- read_sql(query, page_size = 10000)
  dados_censo[[as.character(ano)]] <- df
}

# Combina os dados e salva
censo <- bind_rows(dados_censo)
write.csv(censo, "data/censo_amostra_2000_2010.csv", row.names = FALSE)
