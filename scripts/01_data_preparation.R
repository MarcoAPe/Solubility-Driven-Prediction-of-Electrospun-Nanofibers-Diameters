rm(list = ls())
set.seed(3742423)

source("R/00_packages.R")

datos <- read.csv("data/raw/datos.csv")

datos <- datos |>
  mutate(
    Tipo = factor(Tipo),
    Distancia = as.numeric(Distancia)
  )

write.csv(datos, "data/processed/datos_limpios.csv", row.names = FALSE)
