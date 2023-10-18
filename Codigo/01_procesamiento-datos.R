library(datos)
library(tidyr)
library(dplyr)

casos <- tabla4a |> 
  pivot_longer(cols = `1999`:`2000`,
               names_to = "anio",
               values_to = "casos")


poblacion <- tabla4b |> 
  pivot_longer(cols = `1999`:`2000`,
               names_to = "anio",
               values_to = "poblacion")


datos_tuberculosis <- inner_join(casos, poblacion)
