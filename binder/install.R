# Estos paquetes son la base mínima para que Quarto funcione con R en Binder

# 1. Instalar pak directamente
install.packages("pak")

# 2. Instalar tus paquetes
pak::pkg_install(c(
  "tidyverse",
  "knitr",
  "rmarkdown",
  "jsonlite",
  "languageserver",
  "DT",
  "plotly",
  "leaflet",
  "gapminder",
  "maps"
))
