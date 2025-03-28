# 📊 Microdados RAIS — Script Automatizado via Guilherme Cemin

Este projeto utiliza um script criado por Guilherme Cemin para baixar e importar microdados da RAIS diretamente do site oficial via FTP, além de disponibilizar uma amostra já tratada para facilitar a análise.

---

## 🧰 Requisitos

- R instalado (preferencialmente no Windows)
- Internet estável
- Permissão de leitura/escrita na pasta do projeto
- Pacotes recomendados: `readr`, `dplyr`, `ggplot2`

---

## 📦 Dados disponíveis

### 📥 Download direto (amostra)

Uma amostra dos dados entre **1991 e 2015** pode ser baixada em formato `.csv` via:

👉 [rais_1991_2015_amostra.csv](https://raw.githubusercontent.com/raissaalvimt/meu_projeto_rais/main/rais_1991_2015_amostra.csv)

```r
# Leitura da amostra no R
dados <- readr::read_csv("https://raw.githubusercontent.com/raissaalvimt/meu_projeto_rais/main/rais_1991_2015_amostra.csv")
head(dados)


