# 1. Limpiar la consola al arrancar
# Función para limpiar y abrir el archivo
limpiar_y_abrir <- function() {
  cat("\014") 
  
  # 3. Abrir index.qmd en el editor (no en ventana aparte)
  if (file.exists("index.qmd")) {
    if (requireNamespace("rstudioapi", quietly = TRUE)) {
      rstudioapi::navigateToFile("index.qmd")
    }
  }
}

# Ejecutamos la limpieza en dos momentos para asegurar el éxito:
# A) Nada más cargar R
limpiar_y_abrir()

# B) Justo cuando la sesión de RStudio esté totalmente inicializada
setHook("rstudio.sessionInit", function(newSession) {
  # Esperamos un poco más (1 segundo) para que RStudio termine de soltar sus INFO
  Sys.sleep(1.0) 
  limpiar_y_abrir()
}, action = "append")
