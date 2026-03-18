# .Rprofile optimizado para MyBinder / RStudio Server

if (interactive()) {
  setHook("rstudio.sessionInit", function(newSession) {
    
    # Verificamos si rstudioapi está disponible
    if (requireNamespace("rstudioapi", quietly = TRUE)) {
      
      # Usamos un pequeño retraso para que la interfaz gráfica termine de cargar
      # Si tienes el paquete 'later' instalado, es lo ideal. 
      # Si no, usamos un manejador de eventos del IDE.
      
      try({
        # 1. Abrir el archivo index.qmd si existe
        if (file.exists("index.qmd")) {
          rstudioapi::navigateToFile("index.qmd")
        }
        
        # 2. Limpiar la consola usando el comando interno del IDE
        # (Esto es más efectivo que cat("\014") en sesiones web)
        rstudioapi::executeCommand("consoleClear")
        
      }, silent = TRUE)
    }
  }, action = "append")
}

# Limpieza silenciosa del entorno global al inicio
if (exists(".GlobalEnv")) {
  rm(list = ls(all.names = TRUE, envir = .GlobalEnv), envir = .GlobalEnv)
}

# Mensaje discreto de confirmación en la consola (opcional)
message("### Sesión de Binder preparada: index.qmd abierto ###")
