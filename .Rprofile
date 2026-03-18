# 1. Limpiar la consola al arrancar
setHook("rstudio.sessionInit", function(newSession) {
  Sys.sleep(0.5)        #- espera medio segundo
  cat("\014")           #-  limpia la consola

  #- abrir automáticamente el archivo index.qmd
  if (file.exists("index.qmd")) {
    utils::file.edit("index.qmd")
  }
}, action = "append")
