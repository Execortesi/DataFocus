# Descarga y lee los datos de estaciones
descargar_leer_datos_estacion <- function(id_estacion) {
  estaciones_urls <- list(
    NH0472 = "https://raw.githubusercontent.com/rse-r/intro-programacion/main/datos/NH0472.csv",
    NH0910 = "https://raw.githubusercontent.com/rse-r/intro-programacion/main/datos/NH0910.csv",
    NH0046 = "https://raw.githubusercontent.com/rse-r/intro-programacion/main/datos/NH0046.csv",
    NH0098 = "https://raw.githubusercontent.com/rse-r/intro-programacion/main/datos/NH0098.csv",
    NH0437 = "https://raw.githubusercontent.com/rse-r/intro-programacion/main/datos/NH0437.csv"
  )

  # Obtener la URL correspondiente a la estación
    url_base <- estaciones_urls[[id_estacion]]

  # Leer directamente el CSV desde la URL sin guardarlo
  datos_estacion <- read.csv(url_base)

  return(datos_estacion)
}

# Ejemplo de uso
  #NH0472 <- descargar_leer_datos_estacion("NH0472", "R/NH0472.csv")

datos <- descargar_leer_datos_estacion("NH0472")




