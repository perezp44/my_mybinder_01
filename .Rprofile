# 1. Limpiar la consola al arrancar
# Usamos el Hook para asegurar que RStudio está listo antes de pedirle nada
setHook("rstudio.sessionInit", function(newSession) {
  Sys.sleep(0.5) 
  cat("\014")

  # Usamos rstudioapi para abrir el archivo DENTRO del editor
  if (file.exists("index.qmd")) {
    # Verificamos si la función está disponible (solo en RStudio)
    if (requireNamespace("rstudioapi", quietly = TRUE)) {
      rstudioapi::navigateToFile("index.qmd")
    } else {
      utils::file.edit("index.qmd")
    }
  }
}, action = "append")
