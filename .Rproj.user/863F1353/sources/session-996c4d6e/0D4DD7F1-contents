# 1. Limpiar la consola al arrancar
cat("\014") 

# 2. Mensaje de bienvenida personalizado (opcional)
message("-- Entorno Quarto Preparado")

# 3. Abrir index.qmd
if (interactive() && file.exists("index.qmd")) {
  utils::file.edit("index.qmd")
}
