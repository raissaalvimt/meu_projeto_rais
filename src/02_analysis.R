# 02_analysis.R
# Análise descritiva dos dados da RAIS

library(dplyr)
library(ggplot2)
rais <- read.csv("data/rais_amostra_2005_2015.csv")

# Série temporal: média da faixa salarial por ano
grafico_serie <- rais %>%
  group_by(ano) %>%
  summarise(media_faixa = mean(faixa_remuneracao_media_sm, na.rm = TRUE)) %>%
  ggplot(aes(x = ano, y = media_faixa)) +
  geom_line(size = 1.2) +
  geom_point() +
  theme_minimal() +
  labs(title = "Série temporal da faixa média salarial (RAIS)",
       x = "Ano", y = "Faixa de remuneração (sal. mínimos)")

ggsave("outputs/serie_temporal.png", grafico_serie)

# Comparação entre estados (média geral no período)
grafico_estado <- rais %>%
  group_by(sigla_uf) %>%
  summarise(media_uf = mean(faixa_remuneracao_media_sm, na.rm = TRUE)) %>%
  ggplot(aes(x = reorder(sigla_uf, media_uf), y = media_uf)) +
  geom_col() +
  coord_flip() +
  theme_minimal() +
  labs(title = "Média salarial por estado (RAIS 2005-2015)",
       x = "UF", y = "Faixa de remuneração")

ggsave("outputs/media_estado.png", grafico_estado)

# Diferença salarial por gênero
grafico_genero <- rais %>%
  group_by(sexo) %>%
  summarise(media_genero = mean(faixa_remuneracao_media_sm, na.rm = TRUE)) %>%
  ggplot(aes(x = sexo, y = media_genero, fill = sexo)) +
  geom_col() +
  theme_minimal() +
  labs(title = "Diferença salarial por gênero (RAIS 2005-2015)",
       x = "Gênero", y = "Faixa de remuneração")

ggsave("outputs/genero.png", grafico_genero)
