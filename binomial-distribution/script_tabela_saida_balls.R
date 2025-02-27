#tabela de sa�da

library(gt)
library(tidyverse)

#nome da sua tabela
tabela_probabilidade_bolas %>% 
  gt() %>%
  #cabe�alho da tabela
  tab_header(
    title = md("**Distribui��o de probabilidades**")
  ) %>%
  #definindo o formato dos n�meros
  fmt_number(
    columns = c(probabilidadeV, probabilidadeB),
    decimals = 3
  )

