# Descarga y lee los datos de estaciones
descargar_leer_datos_estacion <- function(id_estacion, ruta_archivo) {
  estaciones_urls <- list(
    NH0472 = "https://raw.githubusercontent.com/rse-r/intro-programacion/main/datos/NH0472.csv",
    NH0910 = "https://raw.githubusercontent.com/rse-r/intro-programacion/main/datos/NH0910.csv",
    NH0046 = "https://raw.githubusercontent.com/rse-r/intro-programacion/main/datos/NH0046.csv",
    NH0098 = "https://raw.githubusercontent.com/rse-r/intro-programacion/main/datos/NH0098.csv",
    NH0437 = "https://raw.githubusercontent.com/rse-r/intro-programacion/main/datos/NH0437.csv"
  )

  url_base <- estaciones_urls[[id_estacion]]

  download.file(url_base, ruta_archivo)

  datos_estacion <- read.csv(ruta_archivo)

  return(datos_estacion)
}

# Ejemplo de uso
<<<<<<< HEAD
  #NH0472 <- descargar_leer_datos_estacion("NH0472", "R/NH0472.csv")

datos <- descargar_leer_datos_estacion("NH0437")
=======
#NH0472 <- descargar_leer_datos_estacion("NH0472", "data/NH0472.csv")


>>>>>>> 5efa467c500738f41810b1d102f76f37efa4397d




