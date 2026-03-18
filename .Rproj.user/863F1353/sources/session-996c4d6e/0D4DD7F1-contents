# Función maestra de limpieza y apertura
preparar_sesion <- function() {
  # 1. Limpiar consola (el comando \014 es el "Ctrl+L" interno)
  cat("\014") 
  
  # 2. Intentar abrir el archivo index.qmd dentro del editor
  if (file.exists("index.qmd") && requireNamespace("rstudioapi", quietly = TRUE)) {
    if (rstudioapi::isAvailable()) {
      rstudioapi::navigateToFile("index.qmd")
    }
  }
  
}

# REPETICIÓN ESTRATÉGICA:
# Lo intentamos en el segundo 1, en el 3 y en el 5.
# Así, no importa si Binder va lento, alguna de las veces funcionará.
setHook("rstudio.sessionInit", function(newSession) {
  # Intento 1 (Rápido)
  Sys.sleep(1.0)
  preparar_sesion()
  
  # Intento 2 (Seguridad)
  Sys.sleep(2.0)
  preparar_sesion()
  
  # Intento 3 (Por si Binder va muy lento)
  Sys.sleep(2.0)
  preparar_sesion()
}, action = "append")


rm(list = ls(all.names = TRUE, envir = .GlobalEnv), envir = .GlobalEnv)
